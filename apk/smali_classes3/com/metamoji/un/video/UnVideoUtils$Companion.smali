.class public final Lcom/metamoji/un/video/UnVideoUtils$Companion;
.super Ljava/lang/Object;
.source "UnVideoUtils.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/un/video/UnVideoUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000p\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0005\n\u0002\u0010\u0011\n\u0002\u0008\u0007\n\u0002\u0010\u000b\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0010\u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000bH\u0007J\"\u0010\u000c\u001a\u0004\u0018\u00010\u000b2\u0006\u0010\r\u001a\u00020\t2\u0006\u0010\u000e\u001a\u00020\t2\u0006\u0010\u000f\u001a\u00020\u000bH\u0007J\u0012\u0010\u0010\u001a\u0004\u0018\u00010\u000b2\u0006\u0010\u0011\u001a\u00020\u000bH\u0007J\u0012\u0010\u0012\u001a\u0004\u0018\u00010\u00132\u0006\u0010\u0014\u001a\u00020\u0001H\u0007J\u0012\u0010\u0015\u001a\u0004\u0018\u00010\u00132\u0006\u0010\u0016\u001a\u00020\u0017H\u0007J\u0014\u0010\u0018\u001a\u00020\u0019*\u00020\u001a2\u0006\u0010\u001b\u001a\u00020\u001cH\u0002J\u0014\u0010\u001d\u001a\u00020\u0019*\u00020\u001a2\u0006\u0010\u001b\u001a\u00020\u001cH\u0002J\u0014\u0010\u001e\u001a\u00020\u0019*\u00020\u001a2\u0006\u0010\u001b\u001a\u00020\u001cH\u0002J\u0018\u0010\u001f\u001a\u00020\u00192\u0006\u0010\u001b\u001a\u00020\u001c2\u0006\u0010 \u001a\u00020\u001aH\u0007J\u0014\u0010!\u001a\u00020\u00192\u000c\u0010\"\u001a\u0008\u0012\u0004\u0012\u00020\u00190#J\u000e\u0010$\u001a\u00020\t2\u0006\u0010%\u001a\u00020&J\u000e\u0010\'\u001a\u00020\t2\u0006\u0010(\u001a\u00020)J\u0010\u0010*\u001a\u00020\t2\u0008\u0008\u0001\u0010+\u001a\u00020)J\u0010\u0010,\u001a\u00020\t2\u0008\u0008\u0001\u0010+\u001a\u00020)J)\u0010-\u001a\u00020\t2\u0008\u0008\u0001\u0010+\u001a\u00020)2\u0012\u0010.\u001a\n\u0012\u0006\u0008\u0001\u0012\u00020\u00010/\"\u00020\u0001\u00a2\u0006\u0002\u00100J \u00103\u001a\u00020\t2\u0006\u00104\u001a\u00020\t2\u0006\u0010\u000e\u001a\u00020\t2\u0008\u0008\u0002\u00105\u001a\u00020\tJ\u0018\u00106\u001a\u0002072\u0006\u00108\u001a\u00020\u000b2\u0006\u00109\u001a\u00020\u000bH\u0007J\u0018\u0010:\u001a\u0002072\u0006\u00108\u001a\u00020\u000b2\u0006\u0010;\u001a\u00020<H\u0007R\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007R\u000e\u00101\u001a\u00020\tX\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u00102\u001a\u00020\tX\u0082T\u00a2\u0006\u0002\n\u0000\u00a8\u0006="
    }
    d2 = {
        "Lcom/metamoji/un/video/UnVideoUtils$Companion;",
        "",
        "<init>",
        "()V",
        "logger",
        "Lcom/metamoji/lib/utils/UtLog;",
        "getLogger",
        "()Lcom/metamoji/lib/utils/UtLog;",
        "stripExtension",
        "",
        "file",
        "Ljava/io/File;",
        "createFile",
        "name",
        "ext",
        "folder",
        "createMp4FileInAlbumStorage",
        "seedFile",
        "fileFromObject",
        "Lcom/metamoji/un/video/UnVideoUtils$WorkFile;",
        "obj",
        "fileFromUri",
        "uri",
        "Landroid/net/Uri;",
        "execVideoTrimming",
        "",
        "Lcom/metamoji/nt/NtEditorWindowController;",
        "context",
        "Lcom/metamoji/cm/CmContext;",
        "execVideoFinish",
        "execVideoInsert",
        "handleAddVideoUnit",
        "window",
        "runOnUiThread",
        "f",
        "Lkotlin/Function0;",
        "stringInKb",
        "size",
        "",
        "stringDecimal",
        "c",
        "",
        "getResourceString",
        "id",
        "getResourceFormatString",
        "formatResourceString",
        "args",
        "",
        "(I[Ljava/lang/Object;)Ljava/lang/String;",
        "DATE_FORMAT_SEC",
        "DATE_FORMAT",
        "autoFileName",
        "prefix",
        "format",
        "copyFileTimeStamp",
        "",
        "dst",
        "src",
        "setFileTimeStamp",
        "date",
        "Ljava/nio/file/attribute/FileTime;",
        "app"
    }
    k = 0x1
    mv = {
        0x2,
        0x2,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/metamoji/un/video/UnVideoUtils$Companion;-><init>()V

    return-void
.end method

.method public static synthetic autoFileName$default(Lcom/metamoji/un/video/UnVideoUtils$Companion;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;
    .locals 0

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    .line 255
    const-string/jumbo p3, "yyyyMMdd-HHmmss"

    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/metamoji/un/video/UnVideoUtils$Companion;->autoFileName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private final execVideoFinish(Lcom/metamoji/nt/NtEditorWindowController;Lcom/metamoji/cm/CmContext;)V
    .locals 9

    .line 176
    const-string/jumbo v0, "videoSource"

    invoke-virtual {p2, v0}, Lcom/metamoji/cm/CmContext;->getExtData(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Ljava/io/File;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    check-cast v0, Ljava/io/File;

    move-object v4, v0

    goto :goto_0

    :cond_0
    move-object v4, v2

    :goto_0
    if-nez v4, :cond_1

    return-void

    .line 177
    :cond_1
    new-instance v3, Lcom/metamoji/video/AmvFrameExtractor;

    invoke-direct {v3}, Lcom/metamoji/video/AmvFrameExtractor;-><init>()V

    .line 178
    invoke-virtual {v3}, Lcom/metamoji/video/AmvFrameExtractor;->getChanceForSettingThumbnailSize()Lcom/metamoji/lib/utils/Funcies2;

    move-result-object v0

    new-instance v1, Lcom/metamoji/un/video/UnVideoUtils$Companion$$ExternalSyntheticLambda2;

    invoke-direct {v1}, Lcom/metamoji/un/video/UnVideoUtils$Companion$$ExternalSyntheticLambda2;-><init>()V

    invoke-virtual {v0, v2, v1}, Lcom/metamoji/lib/utils/Funcies2;->add(Ljava/lang/String;Lkotlin/jvm/functions/Function2;)Lcom/metamoji/lib/utils/IFuncy2;

    .line 182
    invoke-virtual {v3}, Lcom/metamoji/video/AmvFrameExtractor;->getOnVideoInfoRetrievedListener()Lcom/metamoji/lib/utils/Funcies1;

    move-result-object v0

    new-instance v1, Lcom/metamoji/un/video/UnVideoUtils$Companion$$ExternalSyntheticLambda3;

    invoke-direct {v1, p2}, Lcom/metamoji/un/video/UnVideoUtils$Companion$$ExternalSyntheticLambda3;-><init>(Lcom/metamoji/cm/CmContext;)V

    invoke-virtual {v0, v2, v1}, Lcom/metamoji/lib/utils/Funcies1;->add(Ljava/lang/String;Lkotlin/jvm/functions/Function1;)Lcom/metamoji/lib/utils/IFuncy1;

    .line 185
    invoke-virtual {v3}, Lcom/metamoji/video/AmvFrameExtractor;->getOnThumbnailRetrievedListener()Lcom/metamoji/lib/utils/Funcies3;

    move-result-object v0

    new-instance v1, Lcom/metamoji/un/video/UnVideoUtils$Companion$$ExternalSyntheticLambda4;

    invoke-direct {v1, p1, p2}, Lcom/metamoji/un/video/UnVideoUtils$Companion$$ExternalSyntheticLambda4;-><init>(Lcom/metamoji/nt/NtEditorWindowController;Lcom/metamoji/cm/CmContext;)V

    invoke-virtual {v0, v2, v1}, Lcom/metamoji/lib/utils/Funcies3;->add(Ljava/lang/String;Lkotlin/jvm/functions/Function3;)Lcom/metamoji/lib/utils/IFuncy3;

    const/4 v7, 0x2

    const/4 v8, 0x0

    const-wide/16 v5, 0x0

    .line 193
    invoke-static/range {v3 .. v8}, Lcom/metamoji/video/AmvFrameExtractor;->getThumbnail$default(Lcom/metamoji/video/AmvFrameExtractor;Ljava/io/File;JILjava/lang/Object;)V

    return-void
.end method

.method static final execVideoFinish$lambda$4$lambda$0(Lcom/metamoji/video/AmvFrameExtractor;Landroid/util/Size;)Lkotlin/Unit;
    .locals 2

    const-string v0, "extractor"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "videoSize"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 179
    sget-object v0, Lio/github/toyota32k/media/lib/format/HD720VideoStrategy;->INSTANCE:Lio/github/toyota32k/media/lib/format/HD720VideoStrategy;

    invoke-virtual {p1}, Landroid/util/Size;->getWidth()I

    move-result v1

    invoke-virtual {p1}, Landroid/util/Size;->getHeight()I

    move-result p1

    invoke-virtual {v0, v1, p1}, Lio/github/toyota32k/media/lib/format/HD720VideoStrategy;->calcHD720Size(II)Landroid/util/Size;

    move-result-object p1

    .line 180
    sget-object v0, Lcom/metamoji/video/FitMode;->Fit:Lcom/metamoji/video/FitMode;

    invoke-virtual {p1}, Landroid/util/Size;->getWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1}, Landroid/util/Size;->getHeight()I

    move-result p1

    int-to-float p1, p1

    invoke-virtual {p0, v0, v1, p1}, Lcom/metamoji/video/AmvFrameExtractor;->setSizingHint(Lcom/metamoji/video/FitMode;FF)V

    .line 181
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method static final execVideoFinish$lambda$4$lambda$1(Lcom/metamoji/cm/CmContext;Lcom/metamoji/video/AmvFrameExtractor;)Lkotlin/Unit;
    .locals 1

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 183
    new-instance v0, Lcom/metamoji/cm/SizeF;

    invoke-virtual {p1}, Lcom/metamoji/video/AmvFrameExtractor;->getVideoSize()Lcom/metamoji/video/MuSize;

    move-result-object p1

    invoke-virtual {p1}, Lcom/metamoji/video/MuSize;->getAsSizeF()Landroid/util/SizeF;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/metamoji/cm/SizeF;-><init>(Landroid/util/SizeF;)V

    const-string/jumbo p1, "videoSize"

    invoke-virtual {p0, p1, v0}, Lcom/metamoji/cm/CmContext;->setExtData(Ljava/lang/String;Ljava/lang/Object;)V

    .line 184
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method static final execVideoFinish$lambda$4$lambda$3(Lcom/metamoji/nt/NtEditorWindowController;Lcom/metamoji/cm/CmContext;Lcom/metamoji/video/AmvFrameExtractor;ILandroid/graphics/Bitmap;)Lkotlin/Unit;
    .locals 0

    const-string p3, "<unused var>"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "bitmap"

    invoke-static {p4, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 186
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object p2

    new-instance p3, Lcom/metamoji/un/video/UnVideoUtils$Companion$$ExternalSyntheticLambda5;

    invoke-direct {p3, p0, p1, p4}, Lcom/metamoji/un/video/UnVideoUtils$Companion$$ExternalSyntheticLambda5;-><init>(Lcom/metamoji/nt/NtEditorWindowController;Lcom/metamoji/cm/CmContext;Landroid/graphics/Bitmap;)V

    const/4 p0, 0x0

    invoke-virtual {p2, p3, p0, p0}, Lcom/metamoji/cm/CmTaskManager;->ensureRunOnBackground(Ljava/lang/Runnable;Lcom/metamoji/cm/CmTaskManager$ICancellable;Lcom/metamoji/cm/CmTaskManager$IOnCompleted;)V

    .line 192
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method static final execVideoFinish$lambda$4$lambda$3$lambda$2(Lcom/metamoji/nt/NtEditorWindowController;Lcom/metamoji/cm/CmContext;Landroid/graphics/Bitmap;)V
    .locals 2

    .line 187
    invoke-virtual {p0}, Lcom/metamoji/nt/NtEditorWindowController;->getDocumentID()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "videoDocId"

    invoke-virtual {p1, v1}, Lcom/metamoji/cm/CmContext;->getExtData(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 188
    const-string/jumbo v0, "videoThumbnail"

    invoke-virtual {p1, v0, p2}, Lcom/metamoji/cm/CmContext;->setExtData(Ljava/lang/String;Ljava/lang/Object;)V

    .line 189
    invoke-virtual {p0}, Lcom/metamoji/nt/NtEditorWindowController;->getCommandManager()Lcom/metamoji/nt/NtCommandManager;

    move-result-object p0

    sget-object p2, Lcom/metamoji/nt/NtCommand;->CMD_VIDEO_INTERNAL_ADD_UNIT:Lcom/metamoji/nt/NtCommand;

    invoke-virtual {p0, p2, p1}, Lcom/metamoji/nt/NtCommandManager;->execCommand(Lcom/metamoji/nt/NtCommand;Lcom/metamoji/cm/CmContext;)Z

    :cond_0
    return-void
.end method

.method private final execVideoInsert(Lcom/metamoji/nt/NtEditorWindowController;Lcom/metamoji/cm/CmContext;)V
    .locals 2

    .line 198
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v0

    new-instance v1, Lcom/metamoji/un/video/UnVideoUtils$Companion$$ExternalSyntheticLambda0;

    invoke-direct {v1, p1, p2}, Lcom/metamoji/un/video/UnVideoUtils$Companion$$ExternalSyntheticLambda0;-><init>(Lcom/metamoji/nt/NtEditorWindowController;Lcom/metamoji/cm/CmContext;)V

    const/4 p1, 0x0

    invoke-virtual {v0, v1, p1, p1}, Lcom/metamoji/cm/CmTaskManager;->ensureRunOnBackground(Ljava/lang/Runnable;Lcom/metamoji/cm/CmTaskManager$ICancellable;Lcom/metamoji/cm/CmTaskManager$IOnCompleted;)V

    return-void
.end method

.method static final execVideoInsert$lambda$5(Lcom/metamoji/nt/NtEditorWindowController;Lcom/metamoji/cm/CmContext;)V
    .locals 3

    .line 199
    new-instance v0, Lcom/metamoji/cm/CmContext;

    invoke-direct {v0}, Lcom/metamoji/cm/CmContext;-><init>()V

    .line 200
    const-string v1, "index"

    sget-object v2, Lcom/metamoji/nt/NtNoteController$NoteMode;->PEN:Lcom/metamoji/nt/NtNoteController$NoteMode;

    invoke-virtual {v0, v1, v2}, Lcom/metamoji/cm/CmContext;->setExtData(Ljava/lang/String;Ljava/lang/Object;)V

    .line 201
    invoke-virtual {p0}, Lcom/metamoji/nt/NtEditorWindowController;->getCommandManager()Lcom/metamoji/nt/NtCommandManager;

    move-result-object v1

    sget-object v2, Lcom/metamoji/nt/NtCommand;->CMD_SET_NOTEMODE:Lcom/metamoji/nt/NtCommand;

    invoke-virtual {v1, v2, v0}, Lcom/metamoji/nt/NtCommandManager;->execCommand(Lcom/metamoji/nt/NtCommand;Lcom/metamoji/cm/CmContext;)Z

    .line 202
    invoke-virtual {p0}, Lcom/metamoji/nt/NtEditorWindowController;->getCommandManager()Lcom/metamoji/nt/NtCommandManager;

    move-result-object v0

    sget-object v1, Lcom/metamoji/nt/NtCommand;->CMD_NAV_PENTOOL:Lcom/metamoji/nt/NtCommand;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/metamoji/nt/NtCommandManager;->execCommand(Lcom/metamoji/nt/NtCommand;Lcom/metamoji/cm/CmContext;)Z

    .line 203
    invoke-virtual {p0}, Lcom/metamoji/nt/NtEditorWindowController;->getCommandManager()Lcom/metamoji/nt/NtCommandManager;

    move-result-object p0

    sget-object v0, Lcom/metamoji/nt/NtCommand;->CMD_VIDEO_INTERNAL_ADD_UNIT:Lcom/metamoji/nt/NtCommand;

    invoke-virtual {p0, v0, p1}, Lcom/metamoji/nt/NtCommandManager;->execCommand(Lcom/metamoji/nt/NtCommand;Lcom/metamoji/cm/CmContext;)Z

    return-void
.end method

.method private final execVideoTrimming(Lcom/metamoji/nt/NtEditorWindowController;Lcom/metamoji/cm/CmContext;)V
    .locals 10

    .line 147
    new-instance v2, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v2}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    const-string/jumbo v0, "videoRawSource"

    invoke-virtual {p2, v0}, Lcom/metamoji/cm/CmContext;->getExtData(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "getExtData(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/metamoji/un/video/UnVideoUtils$Companion;->fileFromObject(Ljava/lang/Object;)Lcom/metamoji/un/video/UnVideoUtils$WorkFile;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iput-object v0, v2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    const/4 v0, 0x0

    .line 149
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string/jumbo v1, "videoDelOnClose"

    invoke-virtual {p2, v1, v0}, Lcom/metamoji/cm/CmContext;->getExtData(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 150
    new-instance v0, Lcom/metamoji/un/video/UnVideoUtils$WorkFile;

    iget-object v1, v2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v1, Lcom/metamoji/un/video/UnVideoUtils$WorkFile;

    invoke-virtual {v1}, Lcom/metamoji/un/video/UnVideoUtils$WorkFile;->getFile()Ljava/io/File;

    move-result-object v1

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/metamoji/un/video/UnVideoUtils$WorkFile;-><init>(Ljava/io/File;Z)V

    iput-object v0, v2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 152
    :cond_1
    iget-object v0, v2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v0, Lcom/metamoji/un/video/UnVideoUtils$WorkFile;

    invoke-virtual {v0}, Lcom/metamoji/un/video/UnVideoUtils$WorkFile;->getFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/metamoji/un/video/UnVideoUtils$Companion;->createMp4FileInAlbumStorage(Ljava/io/File;)Ljava/io/File;

    move-result-object v3

    if-nez v3, :cond_2

    goto :goto_0

    .line 153
    :cond_2
    invoke-virtual {p1}, Lcom/metamoji/nt/NtEditorWindowController;->getDocumentID()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_3

    :goto_0
    return-void

    .line 155
    :cond_3
    sget-object v0, Lcom/metamoji/lib/dialog/task/UtImmortalTaskManager;->INSTANCE:Lcom/metamoji/lib/dialog/task/UtImmortalTaskManager;

    invoke-virtual {v0}, Lcom/metamoji/lib/dialog/task/UtImmortalTaskManager;->getImmortalTaskScope()Lkotlinx/coroutines/CoroutineScope;

    move-result-object v7

    new-instance v0, Lcom/metamoji/un/video/UnVideoUtils$Companion$execVideoTrimming$1;

    const/4 v6, 0x0

    move-object v5, p1

    move-object v4, p2

    invoke-direct/range {v0 .. v6}, Lcom/metamoji/un/video/UnVideoUtils$Companion$execVideoTrimming$1;-><init>(Ljava/lang/String;Lkotlin/jvm/internal/Ref$ObjectRef;Ljava/io/File;Lcom/metamoji/cm/CmContext;Lcom/metamoji/nt/NtEditorWindowController;Lkotlin/coroutines/Continuation;)V

    check-cast v0, Lkotlin/jvm/functions/Function2;

    const/4 v8, 0x3

    const/4 v9, 0x0

    const/4 v5, 0x0

    move-object v4, v7

    move-object v7, v0

    invoke-static/range {v4 .. v9}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void
.end method

.method static final runOnUiThread$lambda$6(Lkotlin/jvm/functions/Function0;)V
    .locals 0

    .line 224
    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final autoFileName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string v0, "prefix"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "ext"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "format"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 256
    new-instance v0, Ljava/text/SimpleDateFormat;

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v0, p3, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    new-instance p3, Ljava/util/Date;

    invoke-direct {p3}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, p3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final copyFileTimeStamp(Ljava/io/File;Ljava/io/File;)Z
    .locals 3

    const-string v0, "dst"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "src"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 275
    :try_start_0
    invoke-virtual {p2}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object p2

    const-class v1, Ljava/nio/file/attribute/BasicFileAttributes;

    new-array v2, v0, [Ljava/nio/file/LinkOption;

    invoke-static {p2, v1, v2}, Ljava/nio/file/Files;->readAttributes(Ljava/nio/file/Path;Ljava/lang/Class;[Ljava/nio/file/LinkOption;)Ljava/nio/file/attribute/BasicFileAttributes;

    move-result-object p2

    invoke-interface {p2}, Ljava/nio/file/attribute/BasicFileAttributes;->creationTime()Ljava/nio/file/attribute/FileTime;

    move-result-object p2

    .line 276
    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0, p1, p2}, Lcom/metamoji/un/video/UnVideoUtils$Companion;->setFileTimeStamp(Ljava/io/File;Ljava/nio/file/attribute/FileTime;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p1, 0x1

    return p1

    :catchall_0
    move-exception p1

    .line 279
    sget-object p2, Lcom/metamoji/un/video/UnVideoUnit;->Companion:Lcom/metamoji/un/video/UnVideoUnit$Companion;

    invoke-virtual {p2}, Lcom/metamoji/un/video/UnVideoUnit$Companion;->getLogger()Lcom/metamoji/lib/utils/UtLog;

    move-result-object p2

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-static {p2, p1, v2, v1, v2}, Lcom/metamoji/lib/utils/UtLog;->stackTrace$default(Lcom/metamoji/lib/utils/UtLog;Ljava/lang/Throwable;Ljava/lang/String;ILjava/lang/Object;)V

    return v0
.end method

.method public final createFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;
    .locals 4
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "ext"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "folder"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 65
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p3, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 67
    :goto_0
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    add-int/lit8 v1, v1, 0x1

    .line 69
    new-instance v0, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "~"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, p3, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    goto :goto_0

    .line 71
    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z

    move-result p1

    if-nez p1, :cond_1

    const/4 p1, 0x0

    return-object p1

    :cond_1
    return-object v0
.end method

.method public final createMp4FileInAlbumStorage(Ljava/io/File;)Ljava/io/File;
    .locals 2
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string/jumbo v0, "seedFile"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 79
    invoke-virtual {p0, p1}, Lcom/metamoji/un/video/UnVideoUtils$Companion;->stripExtension(Ljava/io/File;)Ljava/lang/String;

    move-result-object p1

    .line 80
    move-object v0, p1

    check-cast v0, Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_0

    .line 81
    const-string p1, "movie"

    .line 83
    :cond_0
    sget-object v0, Lcom/metamoji/media/video/VfVideoFileManager;->Companion:Lcom/metamoji/media/video/VfVideoFileManager$Companion;

    invoke-virtual {v0}, Lcom/metamoji/media/video/VfVideoFileManager$Companion;->getInstance()Lcom/metamoji/media/video/VfVideoFileManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/media/video/VfVideoFileManager;->getAlbumStorageFolder()Ljava/io/File;

    move-result-object v0

    .line 84
    const-string v1, ".mp4"

    invoke-virtual {p0, p1, v1, v0}, Lcom/metamoji/un/video/UnVideoUtils$Companion;->createFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object p1

    return-object p1
.end method

.method public final fileFromObject(Ljava/lang/Object;)Lcom/metamoji/un/video/UnVideoUtils$WorkFile;
    .locals 4
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "obj"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 90
    instance-of v0, p1, Ljava/io/File;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/metamoji/un/video/UnVideoUtils$WorkFile;

    check-cast p1, Ljava/io/File;

    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-direct {v0, p1, v2, v3, v1}, Lcom/metamoji/un/video/UnVideoUtils$WorkFile;-><init>(Ljava/io/File;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0

    .line 91
    :cond_0
    instance-of v0, p1, Landroid/net/Uri;

    if-eqz v0, :cond_1

    check-cast p1, Landroid/net/Uri;

    invoke-virtual {p0, p1}, Lcom/metamoji/un/video/UnVideoUtils$Companion;->fileFromUri(Landroid/net/Uri;)Lcom/metamoji/un/video/UnVideoUtils$WorkFile;

    move-result-object p1

    return-object p1

    :cond_1
    return-object v1
.end method

.method public final fileFromUri(Landroid/net/Uri;)Lcom/metamoji/un/video/UnVideoUtils$WorkFile;
    .locals 7
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string/jumbo v0, "uri"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 98
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "toString(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "file:"

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-static {v0, v1, v2, v3, v4}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 99
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 102
    new-instance v0, Lcom/metamoji/un/video/UnVideoUtils$WorkFile;

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/metamoji/un/video/UnVideoUtils$WorkFile;-><init>(Ljava/io/File;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0

    .line 111
    :cond_0
    :try_start_0
    const-string/jumbo v0, "video"

    const-string v1, ".tmp"

    invoke-static {}, Lcom/metamoji/cm/CmUtils;->getTemporaryDataDirectory()Ljava/io/File;

    move-result-object v2

    const-string v5, "getTemporaryDataDirectory(...)"

    invoke-static {v2, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1, v2}, Lcom/metamoji/un/video/UnVideoUtils$Companion;->createFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    if-eqz v0, :cond_3

    .line 113
    :try_start_1
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 114
    :try_start_2
    invoke-static {}, Lcom/metamoji/cm/CmUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v2
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 115
    :try_start_3
    move-object v5, v1

    check-cast v5, Ljava/io/OutputStream;

    invoke-static {v5, v2}, Lcom/metamoji/cm/CmUtils;->copyStream(Ljava/io/OutputStream;Ljava/io/InputStream;)Z

    move-result v5
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_4

    if-eqz v5, :cond_4

    .line 118
    :try_start_4
    invoke-static {}, Lcom/metamoji/cm/CmUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5, p1}, Landroidx/documentfile/provider/DocumentFile;->fromSingleUri(Landroid/content/Context;Landroid/net/Uri;)Landroidx/documentfile/provider/DocumentFile;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroidx/documentfile/provider/DocumentFile;->lastModified()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    goto :goto_0

    :cond_1
    move-object p1, v4

    :goto_0
    if-eqz p1, :cond_2

    .line 120
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/nio/file/attribute/FileTime;->fromMillis(J)Ljava/nio/file/attribute/FileTime;

    move-result-object p1

    const-string v5, "fromMillis(...)"

    invoke-static {p1, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v0, p1}, Lcom/metamoji/un/video/UnVideoUtils$Companion;->setFileTimeStamp(Ljava/io/File;Ljava/nio/file/attribute/FileTime;)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    .line 123
    :try_start_5
    invoke-virtual {p0}, Lcom/metamoji/un/video/UnVideoUtils$Companion;->getLogger()Lcom/metamoji/lib/utils/UtLog;

    move-result-object v5

    invoke-static {v5, p1, v4, v3, v4}, Lcom/metamoji/lib/utils/UtLog;->stackTrace$default(Lcom/metamoji/lib/utils/UtLog;Ljava/lang/Throwable;Ljava/lang/String;ILjava/lang/Object;)V

    .line 126
    :cond_2
    :goto_1
    new-instance p1, Lcom/metamoji/un/video/UnVideoUtils$WorkFile;

    const/4 v3, 0x1

    invoke-direct {p1, v0, v3}, Lcom/metamoji/un/video/UnVideoUtils$WorkFile;-><init>(Ljava/io/File;Z)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    .line 134
    check-cast v1, Ljava/io/Closeable;

    invoke-static {v1}, Lcom/metamoji/cm/CmUtils;->safeCloseStream(Ljava/io/Closeable;)V

    .line 135
    check-cast v2, Ljava/io/Closeable;

    invoke-static {v2}, Lcom/metamoji/cm/CmUtils;->safeCloseStream(Ljava/io/Closeable;)V

    return-object p1

    :catch_0
    move-exception p1

    goto :goto_4

    :catchall_1
    move-exception p1

    move-object v2, v4

    goto :goto_6

    :catch_1
    move-exception p1

    move-object v2, v4

    goto :goto_4

    :catchall_2
    move-exception p1

    move-object v2, v4

    goto :goto_7

    :catch_2
    move-exception p1

    move-object v1, v4

    goto :goto_3

    :cond_3
    move-object v1, v4

    move-object v2, v1

    .line 134
    :cond_4
    check-cast v1, Ljava/io/Closeable;

    invoke-static {v1}, Lcom/metamoji/cm/CmUtils;->safeCloseStream(Ljava/io/Closeable;)V

    .line 135
    check-cast v2, Ljava/io/Closeable;

    invoke-static {v2}, Lcom/metamoji/cm/CmUtils;->safeCloseStream(Ljava/io/Closeable;)V

    if-eqz v0, :cond_5

    .line 136
    :goto_2
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    goto :goto_5

    :catchall_3
    move-exception p1

    move-object v0, v4

    move-object v2, v0

    goto :goto_7

    :catch_3
    move-exception p1

    move-object v0, v4

    move-object v1, v0

    :goto_3
    move-object v2, v1

    .line 132
    :goto_4
    :try_start_6
    check-cast p1, Ljava/lang/Throwable;

    const-string v3, "UnVideoUtils.fileFromUri"

    invoke-static {p1, v3}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/Throwable;Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    .line 134
    check-cast v1, Ljava/io/Closeable;

    invoke-static {v1}, Lcom/metamoji/cm/CmUtils;->safeCloseStream(Ljava/io/Closeable;)V

    .line 135
    check-cast v2, Ljava/io/Closeable;

    invoke-static {v2}, Lcom/metamoji/cm/CmUtils;->safeCloseStream(Ljava/io/Closeable;)V

    if-eqz v0, :cond_5

    goto :goto_2

    :cond_5
    :goto_5
    return-object v4

    :catchall_4
    move-exception p1

    :goto_6
    move-object v4, v1

    .line 134
    :goto_7
    check-cast v4, Ljava/io/Closeable;

    invoke-static {v4}, Lcom/metamoji/cm/CmUtils;->safeCloseStream(Ljava/io/Closeable;)V

    .line 135
    check-cast v2, Ljava/io/Closeable;

    invoke-static {v2}, Lcom/metamoji/cm/CmUtils;->safeCloseStream(Ljava/io/Closeable;)V

    if-eqz v0, :cond_6

    .line 136
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    :cond_6
    throw p1
.end method

.method public final varargs formatResourceString(I[Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    const-string v0, "args"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 246
    invoke-virtual {p0, p1}, Lcom/metamoji/un/video/UnVideoUtils$Companion;->getResourceFormatString(I)Ljava/lang/String;

    move-result-object p1

    array-length v0, p2

    invoke-static {p2, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p2

    array-length v0, p2

    invoke-static {p2, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p2

    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "format(...)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public final getLogger()Lcom/metamoji/lib/utils/UtLog;
    .locals 1

    .line 50
    invoke-static {}, Lcom/metamoji/un/video/UnVideoUtils;->access$getLogger$cp()Lcom/metamoji/lib/utils/UtLog;

    move-result-object v0

    return-object v0
.end method

.method public final getResourceFormatString(I)Ljava/lang/String;
    .locals 6

    .line 242
    invoke-virtual {p0, p1}, Lcom/metamoji/un/video/UnVideoUtils$Companion;->getResourceString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v4, 0x4

    const/4 v5, 0x0

    const-string v1, "%@"

    const-string v2, "%s"

    const/4 v3, 0x0

    invoke-static/range {v0 .. v5}, Lkotlin/text/StringsKt;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final getResourceString(I)Ljava/lang/String;
    .locals 1

    .line 238
    invoke-static {}, Lcom/metamoji/cm/CmUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "getString(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public final handleAddVideoUnit(Lcom/metamoji/cm/CmContext;Lcom/metamoji/nt/NtEditorWindowController;)V
    .locals 2
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "window"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 209
    const-string/jumbo v0, "videoAddSub"

    invoke-virtual {p1, v0}, Lcom/metamoji/cm/CmContext;->getExtData(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 210
    const-string/jumbo v1, "trimming"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0, p2, p1}, Lcom/metamoji/un/video/UnVideoUtils$Companion;->execVideoTrimming(Lcom/metamoji/nt/NtEditorWindowController;Lcom/metamoji/cm/CmContext;)V

    return-void

    .line 212
    :cond_0
    const-string v1, "finish"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-direct {p0, p2, p1}, Lcom/metamoji/un/video/UnVideoUtils$Companion;->execVideoFinish(Lcom/metamoji/nt/NtEditorWindowController;Lcom/metamoji/cm/CmContext;)V

    return-void

    .line 213
    :cond_1
    const-string v1, "insert"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0, p2, p1}, Lcom/metamoji/un/video/UnVideoUtils$Companion;->execVideoInsert(Lcom/metamoji/nt/NtEditorWindowController;Lcom/metamoji/cm/CmContext;)V

    :cond_2
    return-void
.end method

.method public final runOnUiThread(Lkotlin/jvm/functions/Function0;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "f"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 218
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v0

    .line 219
    invoke-virtual {v0}, Lcom/metamoji/cm/CmTaskManager;->isUIThread()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 220
    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    return-void

    .line 223
    :cond_0
    new-instance v1, Lcom/metamoji/un/video/UnVideoUtils$Companion$$ExternalSyntheticLambda1;

    invoke-direct {v1, p1}, Lcom/metamoji/un/video/UnVideoUtils$Companion$$ExternalSyntheticLambda1;-><init>(Lkotlin/jvm/functions/Function0;)V

    invoke-virtual {v0, v1}, Lcom/metamoji/cm/CmTaskManager;->safeRunOnUIThread(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final setFileTimeStamp(Ljava/io/File;Ljava/nio/file/attribute/FileTime;)Z
    .locals 3

    const-string v0, "dst"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "date"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 286
    :try_start_0
    invoke-virtual {p1}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object p1

    const-class v1, Ljava/nio/file/attribute/BasicFileAttributeView;

    new-array v2, v0, [Ljava/nio/file/LinkOption;

    invoke-static {p1, v1, v2}, Ljava/nio/file/Files;->getFileAttributeView(Ljava/nio/file/Path;Ljava/lang/Class;[Ljava/nio/file/LinkOption;)Ljava/nio/file/attribute/FileAttributeView;

    move-result-object p1

    check-cast p1, Ljava/nio/file/attribute/BasicFileAttributeView;

    if-eqz p1, :cond_0

    invoke-interface {p1, p2, p2, p2}, Ljava/nio/file/attribute/BasicFileAttributeView;->setTimes(Ljava/nio/file/attribute/FileTime;Ljava/nio/file/attribute/FileTime;Ljava/nio/file/attribute/FileTime;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    const/4 p1, 0x1

    return p1

    :catchall_0
    move-exception p1

    .line 290
    sget-object p2, Lcom/metamoji/un/video/UnVideoUnit;->Companion:Lcom/metamoji/un/video/UnVideoUnit$Companion;

    invoke-virtual {p2}, Lcom/metamoji/un/video/UnVideoUnit$Companion;->getLogger()Lcom/metamoji/lib/utils/UtLog;

    move-result-object p2

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-static {p2, p1, v2, v1, v2}, Lcom/metamoji/lib/utils/UtLog;->stackTrace$default(Lcom/metamoji/lib/utils/UtLog;Ljava/lang/Throwable;Ljava/lang/String;ILjava/lang/Object;)V

    return v0
.end method

.method public final stringDecimal(I)Ljava/lang/String;
    .locals 1

    .line 234
    sget-object v0, Lkotlin/jvm/internal/StringCompanionObject;->INSTANCE:Lkotlin/jvm/internal/StringCompanionObject;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const/4 v0, 0x1

    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    const-string v0, "%,d"

    invoke-static {v0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "format(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public final stringInKb(J)Ljava/lang/String;
    .locals 2

    .line 230
    sget-object v0, Lkotlin/jvm/internal/StringCompanionObject;->INSTANCE:Lkotlin/jvm/internal/StringCompanionObject;

    const-wide/16 v0, 0x3e8

    div-long/2addr p1, v0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const/4 p2, 0x1

    invoke-static {p1, p2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    const-string p2, "%,d KB"

    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "format(...)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public final stripExtension(Ljava/io/File;)Ljava/lang/String;
    .locals 6
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "file"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 54
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p1

    .line 55
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    move-object v0, p1

    check-cast v0, Ljava/lang/CharSequence;

    const/4 v4, 0x6

    const/4 v5, 0x0

    const/16 v1, 0x2e

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static/range {v0 .. v5}, Lkotlin/text/StringsKt;->lastIndexOf$default(Ljava/lang/CharSequence;CIZILjava/lang/Object;)I

    move-result v0

    if-gtz v0, :cond_0

    return-object p1

    :cond_0
    const/4 v1, 0x0

    .line 59
    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v0, "substring(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method
