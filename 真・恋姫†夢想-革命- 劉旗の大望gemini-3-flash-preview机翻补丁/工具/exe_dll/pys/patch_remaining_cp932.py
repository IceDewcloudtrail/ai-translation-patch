from pathlib import Path
import csv
import shutil

OUT_DIR = Path(__file__).resolve().parent
REPORT_DIR = OUT_DIR / "reports"
DST = OUT_DIR / "ryuki_cn_gpt.exe"
PASS1_BACKUP = OUT_DIR / "backup" / "ryuki_cn_gpt_pass1.exe"

PATCHES = [
    (0x0040C49C, "kcSoundWaveDS : 既に他のアプリにDirectSoundが使用されています", "kcSoundWaveDS : DirectSound已被其他应用使用"),
    (0x0040C4DC, "kcSoundWaveDS : サウンドデバイスが見つかりません", "kcSoundWaveDS : 找不到声音设备"),
    (0x0040C510, "kcSoundWaveDS : 協調レベルを NORMAL にしました", "kcSoundWaveDS : 协作级别设为 NORMAL"),
    (0x0040C540, "kcSoundWaveDS : DirectSoundを初期化しました", "kcSoundWaveDS : DirectSound已初始化"),
    (0x0040C56C, "kcSoundWaveDS : プライマリバッファ作成に失敗", "kcSoundWaveDS : 主缓冲区创建失败"),
    (0x0040C59C, "kcSoundWaveDS : プライマリバッファフォーマットの設定に失敗", "kcSoundWaveDS : 主缓冲区格式设置失败"),
    (0x0040C678, "OggVobis : リーク発生！", "OggVobis : 发生泄漏!"),
    (0x0040C75C, "kcSoundWaveDSSnd : ファイルローダが不正です", "kcSoundWaveDSSnd : 文件加载器无效"),
    (0x0040C788, "kcSoundWaveDSSnd : バッファが不正です", "kcSoundWaveDSSnd : 缓冲区无效"),
    (0x0040C7B0, "kcSoundWaveDSSnd : 停止中です", "kcSoundWaveDSSnd : 已停止"),
    (0x0040C998, "統合ファイルのオープンに失敗 : %s", "整合文件打开失败 : %s"),
    (0x0040C9BC, "統合ファイルのヘッダ照合に失敗 : %s", "整合文件头校验失败 : %s"),
    (0x0040C9E8, "統合ファイルリンク情報取得に失敗 : %s", "整合文件链接信息获取失败 : %s"),
    (0x0040CA1C, "統合ファイルオープン : %s", "整合文件打开 : %s"),
    (0x0040CA38, "同時にオープンできるファイル数を超えています (MAX:%d) : %s", "同时打开的文件数已超出 (MAX:%d) : %s"),
    (0x0040CA74, "同時にオープンできるファイル数を超えています (MAX:%d) : %d", "同时打开的文件数已超出 (MAX:%d) : %d"),
    (0x0040CB30, "ファイルポインタ移動タイプが不正です", "文件指针移动类型无效"),
    (0x0040CB58, "統合ファイルがオープンされていません", "整合文件未打开"),
    (0x0040CBC8, "kcBigFile : 統合ファイルがオープンされていません", "kcBigFile : 整合文件未打开"),
    (0x0040CBFC, "kcBigFile : ファイルハンドルが無効です", "kcBigFile : 文件句柄无效"),
    (0x0040CC64, "kcMemFile : ファイルがオープンされていません", "kcMemFile : 文件未打开"),
    (0x0040CCD4, "kcProtect : データサイズは8バイト単位である必要があります", "kcProtect : 数据大小必须是8字节单位"),
    (0x0040CD10, "kcProtect : データサイズは8バイト単位である必要があります", "kcProtect : 数据大小必须是8字节单位"),
    (0x0040CD5C, "ゲームスレッドを終了しました", "游戏线程已结束"),
    (0x0040CD7C, "スレッド初期化でエラーが発生しました", "线程初始化发生错误"),
    (0x0040CDA4, "ゲームスレッドを起動しました  frame late : %d fps", "游戏线程已启动  frame late : %d fps"),
    (0x0040CDE8, "ゲームスレッド内ループから抜けました", "已退出游戏线程内循环"),
    (0x0040CE10, "タスクマネージャーを破棄します", "正在释放任务管理器"),
    (0x0040CE30, "タスクマネージャーを破棄しました", "任务管理器已释放"),
    (0x0040CE60, "ベースタスク[%d]を作成しました", "已创建基础任务[%d]"),
    (0x0040CE80, "最上位タスクを破棄しました", "已释放最上层任务"),
    (0x0040CE9C, "ビューを破棄しました", "视图已释放"),
    (0x0040CFC0, "未定義のタスクを作成しようとしました type=%d (%s)", "试图创建未定义任务 type=%d (%s)"),
    (0x0040D220, "Task_Eff_GlassBreak : 3Dモードで使用してください", "Task_Eff_GlassBreak : 请在3D模式使用"),
    (0x0040D2D4, "Task_Eff_Wipe : 3Dモードで使用してください", "Task_Eff_Wipe : 请在3D模式使用"),
    (0x0040D3B4, "Task_Eff2D_Wipe : パラメータ src が不正です", "Task_Eff2D_Wipe : 参数 src 无效"),
    (0x0040D3E0, "Task_Eff2D_Wipe : パラメータ dst が不正です", "Task_Eff2D_Wipe : 参数 dst 无效"),
    (0x0040D40C, "Task_Eff2D_Wipe : パラメータ mask が不正です", "Task_Eff2D_Wipe : 参数 mask 无效"),
    (0x0040D460, "Task_Eff2D_Fade : 画像サイズ不一致", "Task_Eff2D_Fade : 图像大小不一致"),
    (0x0040D484, "Task_Eff2D_Fade : 画像解像度エラー", "Task_Eff2D_Fade : 图像分辨率错误"),
    (0x0040D4A8, "Task_Eff2D_Fade : パラメータ src が不正です", "Task_Eff2D_Fade : 参数 src 无效"),
    (0x0040D4D4, "Task_Eff2D_Fade : パラメータ dst が不正です", "Task_Eff2D_Fade : 参数 dst 无效"),
    (0x0040D500, "Task_Eff2D_Fade : src の BPP が不正です", "Task_Eff2D_Fade : src 的 BPP 无效"),
    (0x0040D528, "Task_Eff2D_Fade : dst の BPP が不正です", "Task_Eff2D_Fade : dst 的 BPP 无效"),
    (0x0040D574, "Task_Eff2D_WipeAlpha : パラメータ src が不正です", "Task_Eff2D_WipeAlpha : 参数 src 无效"),
    (0x0040D5A8, "Task_Eff2D_WipeAlpha : パラメータ mask が不正です", "Task_Eff2D_WipeAlpha : 参数 mask 无效"),
    (0x0040D5DC, "Task_Eff2D_WipeAlpha : 画像解像度エラー", "Task_Eff2D_WipeAlpha : 图像分辨率错误"),
    (0x0040D644, "Task_Eff2D_Wipe2 : パラメータ src が不正です", "Task_Eff2D_Wipe2 : 参数 src 无效"),
    (0x0040D674, "Task_Eff2D_Wipe2 : パラメータ dst が不正です", "Task_Eff2D_Wipe2 : 参数 dst 无效"),
    (0x0040D6A4, "Task_Eff2D_Wipe2 : パラメータ mask が不正です", "Task_Eff2D_Wipe2 : 参数 mask 无效"),
    (0x0040D6F8, "Task_Eff2D_Wipe3 : パラメータ src が不正です", "Task_Eff2D_Wipe3 : 参数 src 无效"),
    (0x0040D728, "Task_Eff2D_Wipe3 : パラメータ dst が不正です", "Task_Eff2D_Wipe3 : 参数 dst 无效"),
    (0x0040D758, "Task_Eff2D_Wipe3 : パラメータ mask が不正です", "Task_Eff2D_Wipe3 : 参数 mask 无效"),
    (0x0040D7AC, "Task_Eff2D_WipeAlpha3 : パラメータ src が不正です", "Task_Eff2D_WipeAlpha3 : 参数 src 无效"),
    (0x0040D7E0, "Task_Eff2D_WipeAlpha3 : パラメータ mask が不正です", "Task_Eff2D_WipeAlpha3 : 参数 mask 无效"),
    (0x0040D814, "Task_Eff2D_WipeAlpha3 : 画像解像度エラー", "Task_Eff2D_WipeAlpha3 : 图像分辨率错误"),
    (0x0040DA48, "kcTaskParticle > このタスクは3D専用です", "kcTaskParticle > 此任务仅限3D"),
    (0x0040DB58, "kcTaskRenderWipe : 32bitマスクを指定してください", "kcTaskRenderWipe : 请指定32bit遮罩"),
    (0x0040E0AC, "空きテクスチャメモリ  起動 : %dMB  現在 : %dMB  (%dMB used)", "可用纹理内存  启动 : %dMB  当前 : %dMB  (%dMB used)"),
    (0x00411EB8, "子スクリプトは複数実行出来ません", "子脚本不能多重执行"),
    (0x00412914, "kcTaskEffekseer > このタスクは3D専用です", "kcTaskEffekseer > 此任务仅限3D"),
    (0x00414044, "kcD3DCore9クラスは複数作成出来ません", "kcD3DCore9类不能创建多个"),
    (0x0041406C, "Direct3Dオブジェクト作成に失敗", "Direct3D对象创建失败"),
    (0x0041422C, "レンダリングターゲット変更に失敗 1", "渲染目标切换失败 1"),
    (0x00414250, "レンダリングターゲット変更に失敗 2", "渲染目标切换失败 2"),
    (0x00414274, "レンダリングターゲット変更に失敗 3", "渲染目标切换失败 3"),
    (0x00414298, "レンダリングターゲット変更に失敗 4", "渲染目标切换失败 4"),
    (0x004142BC, "レンダリングターゲット変更に失敗 5", "渲染目标切换失败 5"),
    (0x00414348, "テクスチャ作成に失敗しました", "纹理创建失败"),
    (0x00414368, "レンダリングテクスチャ作成に失敗しました1(%d) : %d (0x%08x)", "渲染纹理创建失败1(%d) : %d (0x%08x)"),
    (0x004143A4, "レンダリングテクスチャ作成に失敗しました2(%d) : %d (0x%08x)", "渲染纹理创建失败2(%d) : %d (0x%08x)"),
    (0x004143E0, "CopyTexture : フォーマットエラーです", "CopyTexture : 格式错误"),
    (0x00414460, "kcView : 3Dモードの初期化に失敗しました", "kcView : 3D模式初始化失败"),
    (0x00414488, "kcView : 3Dモードを使用します", "kcView : 使用3D模式"),
    (0x004144A8, "kcView : 未定義の動作モードが指定されました", "kcView : 指定了未定义动作模式"),
    (0x004145B4, "vecSortRight : 頂点数が 128 を超えています", "vecSortRight : 顶点数超过 128"),
    (0x004146E8, "0未満の深度のプレーンを作成しようとしました", "试图创建深度小于0的平面"),
    (0x00414714, "カーソルは複数作成出来ません", "不能创建多个光标"),
    (0x004147C8, "4 を超える bpp はサポートしていません", "不支持超过4的 bpp"),
    (0x004147F0, "プレーンバッファの確保に失敗しました : size = %d", "平面缓冲区分配失败 : size = %d"),
    (0x00414A10, "サポートしていないBPPです", "不支持的BPP"),
    (0x00414A2C, "[%d to %d] この形式のコピーは未対応です", "[%d to %d] 不支持此格式复制"),
    (0x00414A54, "拡大縮小コピーは対応していません", "不支持缩放复制"),
    (0x00414AF8, "[%d] この形式の矩形塗りつぶしは未対応です", "[%d] 不支持此格式矩形填充"),
    (0x00414BA0, "サポート外BPPです  bpp=%d", "不支持的BPP  bpp=%d"),
    (0x00414EDC, "HG2(%d) : 対応するIDが見つかりません", "HG2(%d) : 找不到对应ID"),
    (0x00414F04, "HG2 : 未対応のバージョンです", "HG2 : 不支持的版本"),
    (0x00414F24, "HG2 : ヘッダが違います", "HG2 : 头部不符"),
    (0x00414F3C, "kcImageHg2 : バイト領域のサイズが異常です", "kcImageHg2 : 字节区域大小异常"),
    (0x00414F68, "kcImageHg2 : ビット領域のサイズが異常です", "kcImageHg2 : 位区域大小异常"),
    (0x00415010, "HG3 : ヘッダが違います", "HG3 : 头部不符"),
    (0x00415028, "HG3 : ヘッダサイズが違います", "HG3 : 头部大小不符"),
    (0x00415048, "kcImageHg3 : バイト領域のサイズが異常です", "kcImageHg3 : 字节区域大小异常"),
    (0x00415074, "kcImageHg3 : ビット領域のサイズが異常です", "kcImageHg3 : 位区域大小异常"),
    (0x00415130, "ヒープ領域の作成に失敗しました", "堆区域创建失败"),
    (0x0041519C, "メモリが確保出来ませんでした  id = %d  size = %d(0x%x)", "无法分配内存  id = %d  size = %d(0x%x)"),
    (0x0042B870, "kcVideo : %s は未知のファイルタイプです", "kcVideo : %s 是未知文件类型"),
    (0x0042B950, "kcVideo : フィルタグラフインターフェイス取得に失敗", "kcVideo : 筛选器图接口获取失败"),
    (0x0042B984, "kcVideo : フィルタ追加に失敗", "kcVideo : 筛选器添加失败"),
    (0x0042B9A4, "kcVideo : フィルタグラフビルダインターフェイス取得に失敗", "kcVideo : 筛选器图生成器接口获取失败"),
    (0x0042B9E0, "kcVideo : メディアコントロール取得に失敗", "kcVideo : 媒体控制获取失败"),
    (0x0042BA0C, "kcVideo : メディアイベント取得に失敗", "kcVideo : 媒体事件获取失败"),
    (0x0042BA34, "kcVideo : シーク取得に失敗", "kcVideo : 搜寻获取失败"),
    (0x0042BA50, "kcVideo : オーディオ制御取得に失敗", "kcVideo : 音频控制获取失败"),
    (0x0042BF3C, "入力管理クラスは複数インストール出来ません", "输入管理类不能安装多个"),
    (0x0042BF68, "kcWndHookクラスは1つしか作成出来ません", "kcWndHook类只能创建一个"),
    (0x0042BFA0, "kcInput : APIモードで起動されました", "kcInput : 已以API模式启动"),
    (0x0042BFC4, "kcInput : DirectInputモードはまだ未対応です", "kcInput : DirectInput模式尚未支持"),
    (0x0042BFF0, "kcInput : 未定義の動作モードが指定されました", "kcInput : 指定了未定义动作模式"),
    (0x0042F1E0, "kcFEScriptObjPlane : 参照カウンタがマイナスになりました", "kcFEScriptObjPlane : 引用计数变为负数"),
    (0x0042F2D8, "kcFEScriptObjParticle : 参照カウンタがマイナスになりました", "kcFEScriptObjParticle : 引用计数变为负数"),
    (0x004302A8, "未知のモーションタイプです : %s", "未知动作类型 : %s"),
    (0x00430438, "未定義のパラメータです : %s", "未定义参数 : %s"),
    (0x0043056C, "未定義のオブジェクトです > %s", "未定义对象 > %s"),
    (0x004306A4, "オブジェクト名が不正です > %s", "对象名无效 > %s"),
    (0x00430718, "未定義のオブジェクトです > %s", "未定义对象 > %s"),
    (0x00430738, "パラメータが多すぎます > %s", "参数过多 > %s"),
    (0x00430754, "未知のパラメータです > %s", "未知参数 > %s"),
    (0x00430D7C, "ファイル読み込みコールバックがセットされていません", "未设置文件读取回调"),
    (0x00430DFC, "ファイル読み込みに失敗 (%s)", "文件读取失败 (%s)"),
    (0x00430E18, "ファイル読み込みに失敗 (%s)", "文件读取失败 (%s)"),
    (0x00430E68, "ファイル読み込みコールバックがセットされていません", "未设置文件读取回调"),
    (0x00430E9C, "ファイル読み込みに失敗 (%s)", "文件读取失败 (%s)"),
    (0x00430EB8, "ファイル読み込みに失敗 (%s)", "文件读取失败 (%s)"),
    (0x00430F1C, "未知のコマンドが定義されました : %s", "定义了未知命令 : %s"),
    (0x004336E4, "保存先ドライブのチェックに失敗しました", "保存目标驱动器检查失败"),
    (0x0043370C, "保存先ドライブの残り容量が足りません", "保存目标驱动器剩余容量不足"),
    (0x00433734, "セーブファイルがオープンできません", "无法打开存档文件"),
    (0x00433758, "セーブファイルへの書き込みに失敗しました", "存档文件写入失败"),
    (0x0044E124, "kcDDE : サーバ<%s>は既に作成されています", "kcDDE : 服务器<%s>已创建"),
    (0x0044E150, "kcDDE : 既にサーバ<%s>に接続されています", "kcDDE : 已连接服务器<%s>"),
    (0x0044E17C, "kcDDE : トピック %s は既に登録されています", "kcDDE : 主题 %s 已注册"),
    (0x0044E1A8, "kcDDE::GetServerData  サーバ %s に接続されていません", "kcDDE::GetServerData  未连接服务器 %s"),
    (0x0044E1E0, "kcDDEクラスは複数作成出来ません", "kcDDE类不能创建多个"),
    (0x0044E200, "kcCaps : DDEサーバー作成に失敗", "kcCaps : DDE服务器创建失败"),
    (0x004BED0C, "このデータはスクリプトデータではありません", "此数据不是脚本数据"),
    (0x004BED38, "%s(%d) : 不正なコード %d を処理しようとしました", "%s(%d) : 试图处理无效代码 %d"),
    (0x004BEDB0, "%s(%d) : スクリプトが不正なアドレス空間[%d(%x)]にアクセスしようとしました", "%s(%d) : 脚本试图访问无效地址空间[%d(%x)]"),
    (0x004BEE00, "%s(%d) : スクリプトが不正なアドレス空間にアクセスしようとしました", "%s(%d) : 脚本试图访问无效地址空间"),
    (0x004BEE58, "スクリプトが不正なアドレス空間にアクセスしようとしました", "脚本试图访问无效地址空间"),
    (0x004BEE94, "GCALL 不正アクセス (%d)", "GCALL 无效访问 (%d)"),
    (0x004BEEAC, "外部関数コールの戻り値に不正がある可能性があります(%d)", "外部函数调用返回值可能无效(%d)"),
    (0x004BEEEC, "[%s] 未定義のプリプロセッサコードです", "[%s] 未定义的预处理代码"),
    (0x004BEF14, "define マクロの引数の取得に失敗しました", "define 宏参数获取失败"),
    (0x004BEF3C, "%s マクロの引数が足りません", "%s 宏参数不足"),
    (0x004BEF58, "%s マクロの引数が多すぎます", "%s 宏参数过多"),
    (0x004BEFB4, "ファイル[%s]がオープン出来ません", "文件[%s]无法打开"),
    (0x004BEFD8, "トークンの取得に失敗しました", "令牌获取失败"),
    (0x004BEFF8, "define マクロ名に識別子以外は指定出来ません", "define 宏名不能指定标识符以外内容"),
    (0x004BF024, "define マクロの引数を取得中にエラーが発生しました", "获取 define 宏参数时发生错误"),
    (0x004BF058, "define マクロの引数が不正です", "define 宏参数无效"),
    (0x004BF078, "#ifdef の定義が不正です", "#ifdef 定义无效"),
    (0x004BF090, "#ifndef の定義が不正です", "#ifndef 定义无效"),
    (0x004BF0AC, "不正な #else を検出しました", "检测到无效的 #else"),
    (0x004BF0C8, "不正な #endif を検出しました", "检测到无效的 #endif"),
    (0x004BF104, "スクリプトバージョン設定に不正があります", "脚本版本设置无效"),
    (0x004BF4EC, "kcAnmScript : データ形式が違います", "kcAnmScript : 数据格式不同"),
    (0x004BF510, "kcAnmScript : タイムライン数が不正です", "kcAnmScript : 时间线数量无效"),
    (0x004BF538, "kcAnmScript : データサイズが不正です", "kcAnmScript : 数据大小无效"),
]


def main():
    REPORT_DIR.mkdir(exist_ok=True)
    PASS1_BACKUP.parent.mkdir(exist_ok=True)
    if not PASS1_BACKUP.exists():
        shutil.copy2(DST, PASS1_BACKUP)

    data = bytearray(DST.read_bytes())
    rows = []
    patched = 0
    skipped = 0

    for offset, original, replacement in PATCHES:
        old = original.encode("cp932")
        new = replacement.encode("gbk")
        if len(new) > len(old):
            raise RuntimeError(f"0x{offset:08X} replacement too long: {len(new)} > {len(old)}")
        padded = new + (b"\x00" * (len(old) - len(new)))
        current = bytes(data[offset:offset + len(old)])
        if current == old:
            data[offset:offset + len(old)] = padded
            status = "patched"
            patched += 1
        elif current == padded:
            status = "already_patched"
            skipped += 1
        else:
            raise RuntimeError(
                f"offset 0x{offset:08X} mismatch: expected {old.hex(' ')}, got {current.hex(' ')}"
            )
        rows.append({
            "status": status,
            "offset": f"0x{offset:08X}",
            "old_len": len(old),
            "new_len": len(new),
            "old_cp932": original,
            "new_gbk": replacement,
            "old_hex": old.hex(" "),
            "new_hex": new.hex(" "),
        })

    DST.write_bytes(data)
    with (REPORT_DIR / "hex_patch_report_pass2.tsv").open("w", encoding="utf-8", newline="") as f:
        writer = csv.DictWriter(
            f,
            fieldnames=["status", "offset", "old_len", "new_len", "old_cp932", "new_gbk", "old_hex", "new_hex"],
            delimiter="\t",
        )
        writer.writeheader()
        writer.writerows(rows)

    print(f"patched={patched}")
    print(f"already_patched={skipped}")
    print(f"dst={DST}")
    print(f"backup={PASS1_BACKUP}")
    print(f"report={REPORT_DIR / 'hex_patch_report_pass2.tsv'}")


if __name__ == "__main__":
    main()
