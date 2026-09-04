.class public final Lcom/metamoji/un/video/UnVideoUnit$UploadProgress;
.super Ljava/lang/Object;
.source "UnVideoUnit.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/un/video/UnVideoUnit;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "UploadProgress"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/metamoji/un/video/UnVideoUnit$UploadProgress$WhenMappings;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000e\n\u0002\u0008\u0012\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\u0086\u0004\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0012\u0010\u0010\u001a\u00020\u00112\u0008\u0008\u0001\u0010\u0012\u001a\u00020\u0005H\u0002J\u0018\u0010#\u001a\u00020$2\u0006\u0010\n\u001a\u00020\u000b2\u0008\u0010%\u001a\u0004\u0018\u00010&R\u001a\u0010\u0004\u001a\u00020\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007\"\u0004\u0008\u0008\u0010\tR\u001a\u0010\n\u001a\u00020\u000bX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000c\u0010\r\"\u0004\u0008\u000e\u0010\u000fR\u001b\u0010\u0013\u001a\u00020\u00118BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0016\u0010\u0017\u001a\u0004\u0008\u0014\u0010\u0015R\u001b\u0010\u0018\u001a\u00020\u00118BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u001a\u0010\u0017\u001a\u0004\u0008\u0019\u0010\u0015R\u001b\u0010\u001b\u001a\u00020\u00118BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u001d\u0010\u0017\u001a\u0004\u0008\u001c\u0010\u0015R\u001b\u0010\u001e\u001a\u00020\u00118BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008 \u0010\u0017\u001a\u0004\u0008\u001f\u0010\u0015R\u0013\u0010!\u001a\u0004\u0018\u00010\u00118F\u00a2\u0006\u0006\u001a\u0004\u0008\"\u0010\u0015\u00a8\u0006\'"
    }
    d2 = {
        "Lcom/metamoji/un/video/UnVideoUnit$UploadProgress;",
        "",
        "<init>",
        "(Lcom/metamoji/un/video/UnVideoUnit;)V",
        "progress",
        "",
        "getProgress",
        "()I",
        "setProgress",
        "(I)V",
        "status",
        "Lcom/metamoji/media/video/uploader/VfUploadStatusDB$Status;",
        "getStatus",
        "()Lcom/metamoji/media/video/uploader/VfUploadStatusDB$Status;",
        "setStatus",
        "(Lcom/metamoji/media/video/uploader/VfUploadStatusDB$Status;)V",
        "getResourceString",
        "",
        "id",
        "msgInit",
        "getMsgInit",
        "()Ljava/lang/String;",
        "msgInit$delegate",
        "Lkotlin/Lazy;",
        "msgWaiting",
        "getMsgWaiting",
        "msgWaiting$delegate",
        "msgUploading",
        "getMsgUploading",
        "msgUploading$delegate",
        "msgError",
        "getMsgError",
        "msgError$delegate",
        "message",
        "getMessage",
        "update",
        "",
        "option",
        "Lcom/metamoji/media/video/VfVideoFileManager$IUploadProgress;",
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


# instance fields
.field private final msgError$delegate:Lkotlin/Lazy;

.field private final msgInit$delegate:Lkotlin/Lazy;

.field private final msgUploading$delegate:Lkotlin/Lazy;

.field private final msgWaiting$delegate:Lkotlin/Lazy;

.field private progress:I

.field private status:Lcom/metamoji/media/video/uploader/VfUploadStatusDB$Status;

.field final synthetic this$0:Lcom/metamoji/un/video/UnVideoUnit;


# direct methods
.method public constructor <init>(Lcom/metamoji/un/video/UnVideoUnit;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1109
    iput-object p1, p0, Lcom/metamoji/un/video/UnVideoUnit$UploadProgress;->this$0:Lcom/metamoji/un/video/UnVideoUnit;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1111
    sget-object p1, Lcom/metamoji/media/video/uploader/VfUploadStatusDB$Status;->INVALID:Lcom/metamoji/media/video/uploader/VfUploadStatusDB$Status;

    iput-object p1, p0, Lcom/metamoji/un/video/UnVideoUnit$UploadProgress;->status:Lcom/metamoji/media/video/uploader/VfUploadStatusDB$Status;

    .line 1117
    new-instance p1, Lcom/metamoji/un/video/UnVideoUnit$UploadProgress$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lcom/metamoji/un/video/UnVideoUnit$UploadProgress$$ExternalSyntheticLambda0;-><init>(Lcom/metamoji/un/video/UnVideoUnit$UploadProgress;)V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/metamoji/un/video/UnVideoUnit$UploadProgress;->msgInit$delegate:Lkotlin/Lazy;

    .line 1120
    new-instance p1, Lcom/metamoji/un/video/UnVideoUnit$UploadProgress$$ExternalSyntheticLambda1;

    invoke-direct {p1, p0}, Lcom/metamoji/un/video/UnVideoUnit$UploadProgress$$ExternalSyntheticLambda1;-><init>(Lcom/metamoji/un/video/UnVideoUnit$UploadProgress;)V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/metamoji/un/video/UnVideoUnit$UploadProgress;->msgWaiting$delegate:Lkotlin/Lazy;

    .line 1123
    new-instance p1, Lcom/metamoji/un/video/UnVideoUnit$UploadProgress$$ExternalSyntheticLambda2;

    invoke-direct {p1, p0}, Lcom/metamoji/un/video/UnVideoUnit$UploadProgress$$ExternalSyntheticLambda2;-><init>(Lcom/metamoji/un/video/UnVideoUnit$UploadProgress;)V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/metamoji/un/video/UnVideoUnit$UploadProgress;->msgUploading$delegate:Lkotlin/Lazy;

    .line 1126
    new-instance p1, Lcom/metamoji/un/video/UnVideoUnit$UploadProgress$$ExternalSyntheticLambda3;

    invoke-direct {p1, p0}, Lcom/metamoji/un/video/UnVideoUnit$UploadProgress$$ExternalSyntheticLambda3;-><init>(Lcom/metamoji/un/video/UnVideoUnit$UploadProgress;)V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/metamoji/un/video/UnVideoUnit$UploadProgress;->msgError$delegate:Lkotlin/Lazy;

    return-void
.end method

.method private final getMsgError()Ljava/lang/String;
    .locals 1

    .line 1126
    iget-object v0, p0, Lcom/metamoji/un/video/UnVideoUnit$UploadProgress;->msgError$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method private final getMsgInit()Ljava/lang/String;
    .locals 1

    .line 1117
    iget-object v0, p0, Lcom/metamoji/un/video/UnVideoUnit$UploadProgress;->msgInit$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method private final getMsgUploading()Ljava/lang/String;
    .locals 1

    .line 1123
    iget-object v0, p0, Lcom/metamoji/un/video/UnVideoUnit$UploadProgress;->msgUploading$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method private final getMsgWaiting()Ljava/lang/String;
    .locals 1

    .line 1120
    iget-object v0, p0, Lcom/metamoji/un/video/UnVideoUnit$UploadProgress;->msgWaiting$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method private final getResourceString(I)Ljava/lang/String;
    .locals 1

    .line 1114
    invoke-static {}, Lcom/metamoji/cm/CmUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "getString(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method static final msgError_delegate$lambda$3(Lcom/metamoji/un/video/UnVideoUnit$UploadProgress;)Ljava/lang/String;
    .locals 1

    .line 1127
    sget v0, Lcom/metamoji/noteanytime/R$string;->MMJNT_LSTR_VIDEO_UPLOAD_STATE_ERROR:I

    invoke-direct {p0, v0}, Lcom/metamoji/un/video/UnVideoUnit$UploadProgress;->getResourceString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static final msgInit_delegate$lambda$0(Lcom/metamoji/un/video/UnVideoUnit$UploadProgress;)Ljava/lang/String;
    .locals 1

    .line 1118
    sget v0, Lcom/metamoji/noteanytime/R$string;->MMJNT_LSTR_VIDEO_UPLOAD_STATE_INIT:I

    invoke-direct {p0, v0}, Lcom/metamoji/un/video/UnVideoUnit$UploadProgress;->getResourceString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static final msgUploading_delegate$lambda$2(Lcom/metamoji/un/video/UnVideoUnit$UploadProgress;)Ljava/lang/String;
    .locals 1

    .line 1124
    sget v0, Lcom/metamoji/noteanytime/R$string;->MMJNT_LSTR_VIDEO_UPLOAD_STATE_UPLOADING:I

    invoke-direct {p0, v0}, Lcom/metamoji/un/video/UnVideoUnit$UploadProgress;->getResourceString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static final msgWaiting_delegate$lambda$1(Lcom/metamoji/un/video/UnVideoUnit$UploadProgress;)Ljava/lang/String;
    .locals 1

    .line 1121
    sget v0, Lcom/metamoji/noteanytime/R$string;->MMJNT_LSTR_VIDEO_UPLOAD_STATE_WAITING:I

    invoke-direct {p0, v0}, Lcom/metamoji/un/video/UnVideoUnit$UploadProgress;->getResourceString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final getMessage()Ljava/lang/String;
    .locals 3

    .line 1131
    iget-object v0, p0, Lcom/metamoji/un/video/UnVideoUnit$UploadProgress;->status:Lcom/metamoji/media/video/uploader/VfUploadStatusDB$Status;

    sget-object v1, Lcom/metamoji/un/video/UnVideoUnit$UploadProgress$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v0}, Lcom/metamoji/media/video/uploader/VfUploadStatusDB$Status;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_4

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 1141
    :cond_0
    invoke-direct {p0}, Lcom/metamoji/un/video/UnVideoUnit$UploadProgress;->getMsgError()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1135
    :cond_1
    iget v0, p0, Lcom/metamoji/un/video/UnVideoUnit$UploadProgress;->progress:I

    if-nez v0, :cond_2

    .line 1136
    invoke-direct {p0}, Lcom/metamoji/un/video/UnVideoUnit$UploadProgress;->getMsgUploading()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1138
    :cond_2
    invoke-direct {p0}, Lcom/metamoji/un/video/UnVideoUnit$UploadProgress;->getMsgUploading()Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lcom/metamoji/un/video/UnVideoUnit$UploadProgress;->progress:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ": "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " %"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1133
    :cond_3
    invoke-direct {p0}, Lcom/metamoji/un/video/UnVideoUnit$UploadProgress;->getMsgWaiting()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1132
    :cond_4
    invoke-direct {p0}, Lcom/metamoji/un/video/UnVideoUnit$UploadProgress;->getMsgInit()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getProgress()I
    .locals 1

    .line 1110
    iget v0, p0, Lcom/metamoji/un/video/UnVideoUnit$UploadProgress;->progress:I

    return v0
.end method

.method public final getStatus()Lcom/metamoji/media/video/uploader/VfUploadStatusDB$Status;
    .locals 1

    .line 1111
    iget-object v0, p0, Lcom/metamoji/un/video/UnVideoUnit$UploadProgress;->status:Lcom/metamoji/media/video/uploader/VfUploadStatusDB$Status;

    return-object v0
.end method

.method public final setProgress(I)V
    .locals 0

    .line 1110
    iput p1, p0, Lcom/metamoji/un/video/UnVideoUnit$UploadProgress;->progress:I

    return-void
.end method

.method public final setStatus(Lcom/metamoji/media/video/uploader/VfUploadStatusDB$Status;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1111
    iput-object p1, p0, Lcom/metamoji/un/video/UnVideoUnit$UploadProgress;->status:Lcom/metamoji/media/video/uploader/VfUploadStatusDB$Status;

    return-void
.end method

.method public final update(Lcom/metamoji/media/video/uploader/VfUploadStatusDB$Status;Lcom/metamoji/media/video/VfVideoFileManager$IUploadProgress;)Z
    .locals 6

    const-string/jumbo v0, "status"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1147
    iget-object v0, p0, Lcom/metamoji/un/video/UnVideoUnit$UploadProgress;->status:Lcom/metamoji/media/video/uploader/VfUploadStatusDB$Status;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq v0, p1, :cond_0

    .line 1149
    iput-object p1, p0, Lcom/metamoji/un/video/UnVideoUnit$UploadProgress;->status:Lcom/metamoji/media/video/uploader/VfUploadStatusDB$Status;

    move p1, v1

    goto :goto_0

    :cond_0
    move p1, v2

    .line 1151
    :goto_0
    iget-object v0, p0, Lcom/metamoji/un/video/UnVideoUnit$UploadProgress;->status:Lcom/metamoji/media/video/uploader/VfUploadStatusDB$Status;

    sget-object v3, Lcom/metamoji/media/video/uploader/VfUploadStatusDB$Status;->UPLOADING:Lcom/metamoji/media/video/uploader/VfUploadStatusDB$Status;

    if-ne v0, v3, :cond_2

    if-eqz p2, :cond_2

    .line 1152
    invoke-interface {p2}, Lcom/metamoji/media/video/VfVideoFileManager$IUploadProgress;->getBytesSent()J

    move-result-wide v2

    long-to-float v0, v2

    float-to-double v2, v0

    const-wide/high16 v4, 0x4059000000000000L    # 100.0

    mul-double/2addr v2, v4

    invoke-interface {p2}, Lcom/metamoji/media/video/VfVideoFileManager$IUploadProgress;->getTotalBytesToSend()J

    move-result-wide v4

    long-to-float p2, v4

    float-to-double v4, p2

    div-double/2addr v2, v4

    double-to-int p2, v2

    .line 1153
    iget v0, p0, Lcom/metamoji/un/video/UnVideoUnit$UploadProgress;->progress:I

    if-eq p2, v0, :cond_1

    .line 1155
    iput p2, p0, Lcom/metamoji/un/video/UnVideoUnit$UploadProgress;->progress:I

    return v1

    :cond_1
    return p1

    .line 1159
    :cond_2
    iput v2, p0, Lcom/metamoji/un/video/UnVideoUnit$UploadProgress;->progress:I

    return p1
.end method
