.class final Lcom/metamoji/media/video/dialog/MfProgressDialog$Model;
.super Ljava/lang/Object;
.source "MfProgressDialog.kt"

# interfaces
.implements Lcom/metamoji/media/video/VfVideoFileManager$IMultiUploadingProgress;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/media/video/dialog/MfProgressDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "Model"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/metamoji/media/video/dialog/MfProgressDialog$Model$UploadProgress;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0007\n\u0002\u0010\u0008\n\u0002\u0008\u000b\n\u0002\u0010\u0002\n\u0002\u0008\u000c\n\u0002\u0010\t\n\u0002\u0008\t\u0008\u0082\u0004\u0018\u00002\u00020\u0001:\u00013B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0014\u0010\u001d\u001a\u00020\u001e2\u000c\u0010\u001f\u001a\u0008\u0018\u00010\u0000R\u00020\u0006J\u000e\u0010 \u001a\u00020\u001e2\u0006\u0010!\u001a\u00020\u0001J\u0018\u0010)\u001a\u00020\u001e2\u0006\u0010*\u001a\u00020+2\u0006\u0010,\u001a\u00020+H\u0002J \u0010-\u001a\u00020\u001e2\u0006\u0010.\u001a\u00020\u00122\u0006\u0010/\u001a\u00020\u00122\u0006\u0010,\u001a\u00020\u0012H\u0002J\u000e\u00100\u001a\u00020\u001e2\u0006\u00101\u001a\u00020\nJ\u0006\u00102\u001a\u00020\u001eR\u0019\u0010\u0004\u001a\n0\u0005R\u00060\u0000R\u00020\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008R\u001c\u0010\t\u001a\u0004\u0018\u00010\nX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000b\u0010\u000c\"\u0004\u0008\r\u0010\u000eR\u001c\u0010\u000f\u001a\n0\u0005R\u00060\u0000R\u00020\u0006X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0010\u0010\u0008R\u001a\u0010\u0011\u001a\u00020\u0012X\u0096\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0013\u0010\u0014\"\u0004\u0008\u0015\u0010\u0016R\u001a\u0010\u0017\u001a\u00020\u0012X\u0096\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0018\u0010\u0014\"\u0004\u0008\u0019\u0010\u0016R\u001a\u0010\u001a\u001a\u00020\u0012X\u0096\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001b\u0010\u0014\"\u0004\u0008\u001c\u0010\u0016R\u001b\u0010\"\u001a\u00020\n8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008$\u0010%\u001a\u0004\u0008#\u0010\u000cR\u001b\u0010&\u001a\u00020\n8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008(\u0010%\u001a\u0004\u0008\'\u0010\u000c\u00a8\u00064"
    }
    d2 = {
        "Lcom/metamoji/media/video/dialog/MfProgressDialog$Model;",
        "Lcom/metamoji/media/video/VfVideoFileManager$IMultiUploadingProgress;",
        "<init>",
        "(Lcom/metamoji/media/video/dialog/MfProgressDialog;)V",
        "currentFileProgress",
        "Lcom/metamoji/media/video/dialog/MfProgressDialog$Model$UploadProgress;",
        "Lcom/metamoji/media/video/dialog/MfProgressDialog;",
        "getCurrentFileProgress",
        "()Lcom/metamoji/media/video/dialog/MfProgressDialog$Model$UploadProgress;",
        "errorMessage",
        "",
        "getErrorMessage",
        "()Ljava/lang/String;",
        "setErrorMessage",
        "(Ljava/lang/String;)V",
        "currentFile",
        "getCurrentFile",
        "totalCount",
        "",
        "getTotalCount",
        "()I",
        "setTotalCount",
        "(I)V",
        "uploadedCount",
        "getUploadedCount",
        "setUploadedCount",
        "errorCount",
        "getErrorCount",
        "setErrorCount",
        "initByPreviousModel",
        "",
        "src",
        "updateProgress",
        "progress",
        "mStringFormatInBytes",
        "getMStringFormatInBytes",
        "mStringFormatInBytes$delegate",
        "Lkotlin/Lazy;",
        "mStringFormatInFiles",
        "getMStringFormatInFiles",
        "mStringFormatInFiles$delegate",
        "setBytesProgress",
        "bytes",
        "",
        "total",
        "setFilesProgress",
        "uploaded",
        "error",
        "showMessage",
        "msg",
        "resetMessage",
        "UploadProgress",
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
.field private final currentFile:Lcom/metamoji/media/video/dialog/MfProgressDialog$Model$UploadProgress;

.field private final currentFileProgress:Lcom/metamoji/media/video/dialog/MfProgressDialog$Model$UploadProgress;

.field private errorCount:I

.field private errorMessage:Ljava/lang/String;

.field private final mStringFormatInBytes$delegate:Lkotlin/Lazy;

.field private final mStringFormatInFiles$delegate:Lkotlin/Lazy;

.field final synthetic this$0:Lcom/metamoji/media/video/dialog/MfProgressDialog;

.field private totalCount:I

.field private uploadedCount:I


# direct methods
.method public constructor <init>(Lcom/metamoji/media/video/dialog/MfProgressDialog;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 263
    iput-object p1, p0, Lcom/metamoji/media/video/dialog/MfProgressDialog$Model;->this$0:Lcom/metamoji/media/video/dialog/MfProgressDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 269
    new-instance v0, Lcom/metamoji/media/video/dialog/MfProgressDialog$Model$UploadProgress;

    invoke-direct {v0, p0}, Lcom/metamoji/media/video/dialog/MfProgressDialog$Model$UploadProgress;-><init>(Lcom/metamoji/media/video/dialog/MfProgressDialog$Model;)V

    iput-object v0, p0, Lcom/metamoji/media/video/dialog/MfProgressDialog$Model;->currentFileProgress:Lcom/metamoji/media/video/dialog/MfProgressDialog$Model$UploadProgress;

    .line 275
    iput-object v0, p0, Lcom/metamoji/media/video/dialog/MfProgressDialog$Model;->currentFile:Lcom/metamoji/media/video/dialog/MfProgressDialog$Model$UploadProgress;

    .line 314
    new-instance v0, Lcom/metamoji/media/video/dialog/MfProgressDialog$Model$$ExternalSyntheticLambda0;

    invoke-direct {v0, p1}, Lcom/metamoji/media/video/dialog/MfProgressDialog$Model$$ExternalSyntheticLambda0;-><init>(Lcom/metamoji/media/video/dialog/MfProgressDialog;)V

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/metamoji/media/video/dialog/MfProgressDialog$Model;->mStringFormatInBytes$delegate:Lkotlin/Lazy;

    .line 317
    new-instance v0, Lcom/metamoji/media/video/dialog/MfProgressDialog$Model$$ExternalSyntheticLambda1;

    invoke-direct {v0, p1}, Lcom/metamoji/media/video/dialog/MfProgressDialog$Model$$ExternalSyntheticLambda1;-><init>(Lcom/metamoji/media/video/dialog/MfProgressDialog;)V

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/metamoji/media/video/dialog/MfProgressDialog$Model;->mStringFormatInFiles$delegate:Lkotlin/Lazy;

    return-void
.end method

.method private final getMStringFormatInBytes()Ljava/lang/String;
    .locals 1

    .line 314
    iget-object v0, p0, Lcom/metamoji/media/video/dialog/MfProgressDialog$Model;->mStringFormatInBytes$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method private final getMStringFormatInFiles()Ljava/lang/String;
    .locals 1

    .line 317
    iget-object v0, p0, Lcom/metamoji/media/video/dialog/MfProgressDialog$Model;->mStringFormatInFiles$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method static final mStringFormatInBytes_delegate$lambda$0(Lcom/metamoji/media/video/dialog/MfProgressDialog;)Ljava/lang/String;
    .locals 1

    .line 315
    sget v0, Lcom/metamoji/noteanytime/R$string;->MMJNT_LSTR_VIDEO_FORMAT_PROGRESS_IN_BYTES:I

    invoke-static {p0, v0}, Lcom/metamoji/media/video/dialog/MfProgressDialog;->access$formatString(Lcom/metamoji/media/video/dialog/MfProgressDialog;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static final mStringFormatInFiles_delegate$lambda$1(Lcom/metamoji/media/video/dialog/MfProgressDialog;)Ljava/lang/String;
    .locals 1

    .line 318
    sget v0, Lcom/metamoji/noteanytime/R$string;->MMJNT_LSTR_VIDEO_FORMAT_PROGRESS_IN_FILES:I

    invoke-static {p0, v0}, Lcom/metamoji/media/video/dialog/MfProgressDialog;->access$formatString(Lcom/metamoji/media/video/dialog/MfProgressDialog;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private final setBytesProgress(JJ)V
    .locals 3

    .line 325
    iget-object v0, p0, Lcom/metamoji/media/video/dialog/MfProgressDialog$Model;->currentFileProgress:Lcom/metamoji/media/video/dialog/MfProgressDialog$Model$UploadProgress;

    invoke-virtual {v0, p1, p2}, Lcom/metamoji/media/video/dialog/MfProgressDialog$Model$UploadProgress;->setBytesSent(J)V

    .line 326
    iget-object v0, p0, Lcom/metamoji/media/video/dialog/MfProgressDialog$Model;->currentFileProgress:Lcom/metamoji/media/video/dialog/MfProgressDialog$Model$UploadProgress;

    invoke-virtual {v0, p3, p4}, Lcom/metamoji/media/video/dialog/MfProgressDialog$Model$UploadProgress;->setTotalBytesToSend(J)V

    .line 328
    iget-object v0, p0, Lcom/metamoji/media/video/dialog/MfProgressDialog$Model;->this$0:Lcom/metamoji/media/video/dialog/MfProgressDialog;

    invoke-static {v0}, Lcom/metamoji/media/video/dialog/MfProgressDialog;->access$getControl$p(Lcom/metamoji/media/video/dialog/MfProgressDialog;)Lcom/metamoji/media/video/dialog/MfProgressDialog$Control;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 330
    invoke-virtual {v0}, Lcom/metamoji/media/video/dialog/MfProgressDialog$Control;->getBytesProgressBar()Landroid/widget/ProgressBar;

    move-result-object v1

    iget-object v2, p0, Lcom/metamoji/media/video/dialog/MfProgressDialog$Model;->currentFileProgress:Lcom/metamoji/media/video/dialog/MfProgressDialog$Model$UploadProgress;

    invoke-virtual {v2}, Lcom/metamoji/media/video/dialog/MfProgressDialog$Model$UploadProgress;->getPercent()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 331
    invoke-virtual {v0}, Lcom/metamoji/media/video/dialog/MfProgressDialog$Control;->getBytesProgressText()Landroid/widget/TextView;

    move-result-object v0

    sget-object v1, Lkotlin/jvm/internal/StringCompanionObject;->INSTANCE:Lkotlin/jvm/internal/StringCompanionObject;

    invoke-direct {p0}, Lcom/metamoji/media/video/dialog/MfProgressDialog$Model;->getMStringFormatInBytes()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/metamoji/un/video/UnVideoUtils;->Companion:Lcom/metamoji/un/video/UnVideoUtils$Companion;

    invoke-virtual {v2, p1, p2}, Lcom/metamoji/un/video/UnVideoUtils$Companion;->stringInKb(J)Ljava/lang/String;

    move-result-object p1

    sget-object p2, Lcom/metamoji/un/video/UnVideoUtils;->Companion:Lcom/metamoji/un/video/UnVideoUtils$Companion;

    invoke-virtual {p2, p3, p4}, Lcom/metamoji/un/video/UnVideoUtils$Companion;->stringInKb(J)Ljava/lang/String;

    move-result-object p2

    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    const/4 p2, 0x2

    invoke-static {p1, p2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    invoke-static {v1, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "format(...)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method private final setFilesProgress(III)V
    .locals 3

    .line 339
    iget-object v0, p0, Lcom/metamoji/media/video/dialog/MfProgressDialog$Model;->this$0:Lcom/metamoji/media/video/dialog/MfProgressDialog;

    invoke-static {v0}, Lcom/metamoji/media/video/dialog/MfProgressDialog;->access$isMulti(Lcom/metamoji/media/video/dialog/MfProgressDialog;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 342
    :cond_0
    invoke-virtual {p0, p3}, Lcom/metamoji/media/video/dialog/MfProgressDialog$Model;->setTotalCount(I)V

    .line 343
    invoke-virtual {p0, p1}, Lcom/metamoji/media/video/dialog/MfProgressDialog$Model;->setUploadedCount(I)V

    .line 344
    invoke-virtual {p0, p2}, Lcom/metamoji/media/video/dialog/MfProgressDialog$Model;->setErrorCount(I)V

    .line 345
    invoke-virtual {p0}, Lcom/metamoji/media/video/dialog/MfProgressDialog$Model;->isFinished()Z

    move-result p1

    if-nez p1, :cond_1

    const-wide/16 p1, 0x0

    .line 346
    invoke-direct {p0, p1, p2, p1, p2}, Lcom/metamoji/media/video/dialog/MfProgressDialog$Model;->setBytesProgress(JJ)V

    .line 348
    :cond_1
    iget-object p1, p0, Lcom/metamoji/media/video/dialog/MfProgressDialog$Model;->this$0:Lcom/metamoji/media/video/dialog/MfProgressDialog;

    invoke-static {p1}, Lcom/metamoji/media/video/dialog/MfProgressDialog;->access$getControl$p(Lcom/metamoji/media/video/dialog/MfProgressDialog;)Lcom/metamoji/media/video/dialog/MfProgressDialog$Control;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 350
    invoke-virtual {p1}, Lcom/metamoji/media/video/dialog/MfProgressDialog$Control;->getFilesProgressBar()Landroid/widget/ProgressBar;

    move-result-object p2

    invoke-virtual {p0}, Lcom/metamoji/media/video/dialog/MfProgressDialog$Model;->getTotalCount()I

    move-result p3

    if-lez p3, :cond_2

    invoke-virtual {p0}, Lcom/metamoji/media/video/dialog/MfProgressDialog$Model;->getProcessedCount()I

    move-result p3

    mul-int/lit8 p3, p3, 0x64

    invoke-virtual {p0}, Lcom/metamoji/media/video/dialog/MfProgressDialog$Model;->getTotalCount()I

    move-result v0

    div-int/2addr p3, v0

    goto :goto_0

    :cond_2
    const/4 p3, 0x0

    :goto_0
    invoke-virtual {p2, p3}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 351
    invoke-virtual {p1}, Lcom/metamoji/media/video/dialog/MfProgressDialog$Control;->getFilesProgressText()Landroid/widget/TextView;

    move-result-object p1

    sget-object p2, Lkotlin/jvm/internal/StringCompanionObject;->INSTANCE:Lkotlin/jvm/internal/StringCompanionObject;

    invoke-direct {p0}, Lcom/metamoji/media/video/dialog/MfProgressDialog$Model;->getMStringFormatInFiles()Ljava/lang/String;

    move-result-object p2

    sget-object p3, Lcom/metamoji/un/video/UnVideoUtils;->Companion:Lcom/metamoji/un/video/UnVideoUtils$Companion;

    invoke-virtual {p0}, Lcom/metamoji/media/video/dialog/MfProgressDialog$Model;->getUploadedCount()I

    move-result v0

    invoke-virtual {p3, v0}, Lcom/metamoji/un/video/UnVideoUtils$Companion;->stringDecimal(I)Ljava/lang/String;

    move-result-object p3

    sget-object v0, Lcom/metamoji/un/video/UnVideoUtils;->Companion:Lcom/metamoji/un/video/UnVideoUtils$Companion;

    invoke-virtual {p0}, Lcom/metamoji/media/video/dialog/MfProgressDialog$Model;->getErrorCount()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/metamoji/un/video/UnVideoUtils$Companion;->stringDecimal(I)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/metamoji/un/video/UnVideoUtils;->Companion:Lcom/metamoji/un/video/UnVideoUtils$Companion;

    invoke-virtual {p0}, Lcom/metamoji/media/video/dialog/MfProgressDialog$Model;->getTotalCount()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/metamoji/un/video/UnVideoUtils$Companion;->stringDecimal(I)Ljava/lang/String;

    move-result-object v1

    filled-new-array {p3, v0, v1}, [Ljava/lang/Object;

    move-result-object p3

    const/4 v0, 0x3

    invoke-static {p3, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p3

    invoke-static {p2, p3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const-string p3, "format(...)"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Ljava/lang/CharSequence;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_3
    :goto_1
    return-void
.end method


# virtual methods
.method public bridge synthetic getCurrentFile()Lcom/metamoji/media/video/VfVideoFileManager$IUploadProgress;
    .locals 1

    .line 263
    invoke-virtual {p0}, Lcom/metamoji/media/video/dialog/MfProgressDialog$Model;->getCurrentFile()Lcom/metamoji/media/video/dialog/MfProgressDialog$Model$UploadProgress;

    move-result-object v0

    check-cast v0, Lcom/metamoji/media/video/VfVideoFileManager$IUploadProgress;

    return-object v0
.end method

.method public getCurrentFile()Lcom/metamoji/media/video/dialog/MfProgressDialog$Model$UploadProgress;
    .locals 1

    .line 275
    iget-object v0, p0, Lcom/metamoji/media/video/dialog/MfProgressDialog$Model;->currentFile:Lcom/metamoji/media/video/dialog/MfProgressDialog$Model$UploadProgress;

    return-object v0
.end method

.method public final getCurrentFileProgress()Lcom/metamoji/media/video/dialog/MfProgressDialog$Model$UploadProgress;
    .locals 1

    .line 269
    iget-object v0, p0, Lcom/metamoji/media/video/dialog/MfProgressDialog$Model;->currentFileProgress:Lcom/metamoji/media/video/dialog/MfProgressDialog$Model$UploadProgress;

    return-object v0
.end method

.method public getErrorCount()I
    .locals 1

    .line 278
    iget v0, p0, Lcom/metamoji/media/video/dialog/MfProgressDialog$Model;->errorCount:I

    return v0
.end method

.method public final getErrorMessage()Ljava/lang/String;
    .locals 1

    .line 272
    iget-object v0, p0, Lcom/metamoji/media/video/dialog/MfProgressDialog$Model;->errorMessage:Ljava/lang/String;

    return-object v0
.end method

.method public getProcessedCount()I
    .locals 1

    .line 263
    invoke-super {p0}, Lcom/metamoji/media/video/VfVideoFileManager$IMultiUploadingProgress;->getProcessedCount()I

    move-result v0

    return v0
.end method

.method public getTotalCount()I
    .locals 1

    .line 276
    iget v0, p0, Lcom/metamoji/media/video/dialog/MfProgressDialog$Model;->totalCount:I

    return v0
.end method

.method public getUploadedCount()I
    .locals 1

    .line 277
    iget v0, p0, Lcom/metamoji/media/video/dialog/MfProgressDialog$Model;->uploadedCount:I

    return v0
.end method

.method public final initByPreviousModel(Lcom/metamoji/media/video/dialog/MfProgressDialog$Model;)V
    .locals 4

    if-eqz p1, :cond_0

    .line 283
    iget-object v0, p1, Lcom/metamoji/media/video/dialog/MfProgressDialog$Model;->errorMessage:Ljava/lang/String;

    iput-object v0, p0, Lcom/metamoji/media/video/dialog/MfProgressDialog$Model;->errorMessage:Ljava/lang/String;

    .line 284
    invoke-virtual {p1}, Lcom/metamoji/media/video/dialog/MfProgressDialog$Model;->getUploadedCount()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/metamoji/media/video/dialog/MfProgressDialog$Model;->setUploadedCount(I)V

    .line 285
    invoke-virtual {p1}, Lcom/metamoji/media/video/dialog/MfProgressDialog$Model;->getErrorCount()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/metamoji/media/video/dialog/MfProgressDialog$Model;->setErrorCount(I)V

    .line 286
    invoke-virtual {p1}, Lcom/metamoji/media/video/dialog/MfProgressDialog$Model;->getTotalCount()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/metamoji/media/video/dialog/MfProgressDialog$Model;->setTotalCount(I)V

    .line 287
    invoke-virtual {p0}, Lcom/metamoji/media/video/dialog/MfProgressDialog$Model;->getCurrentFile()Lcom/metamoji/media/video/dialog/MfProgressDialog$Model$UploadProgress;

    move-result-object v0

    invoke-virtual {p1}, Lcom/metamoji/media/video/dialog/MfProgressDialog$Model;->getCurrentFile()Lcom/metamoji/media/video/dialog/MfProgressDialog$Model$UploadProgress;

    move-result-object v1

    invoke-virtual {v1}, Lcom/metamoji/media/video/dialog/MfProgressDialog$Model$UploadProgress;->getBytesSent()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/metamoji/media/video/dialog/MfProgressDialog$Model$UploadProgress;->setBytesSent(J)V

    .line 288
    invoke-virtual {p0}, Lcom/metamoji/media/video/dialog/MfProgressDialog$Model;->getCurrentFile()Lcom/metamoji/media/video/dialog/MfProgressDialog$Model$UploadProgress;

    move-result-object v0

    invoke-virtual {p1}, Lcom/metamoji/media/video/dialog/MfProgressDialog$Model;->getCurrentFile()Lcom/metamoji/media/video/dialog/MfProgressDialog$Model$UploadProgress;

    move-result-object p1

    invoke-virtual {p1}, Lcom/metamoji/media/video/dialog/MfProgressDialog$Model$UploadProgress;->getTotalBytesToSend()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/metamoji/media/video/dialog/MfProgressDialog$Model$UploadProgress;->setTotalBytesToSend(J)V

    .line 291
    :cond_0
    iget-object p1, p0, Lcom/metamoji/media/video/dialog/MfProgressDialog$Model;->errorMessage:Ljava/lang/String;

    if-nez p1, :cond_1

    .line 292
    invoke-virtual {p0}, Lcom/metamoji/media/video/dialog/MfProgressDialog$Model;->getCurrentFile()Lcom/metamoji/media/video/dialog/MfProgressDialog$Model$UploadProgress;

    move-result-object p1

    invoke-virtual {p1}, Lcom/metamoji/media/video/dialog/MfProgressDialog$Model$UploadProgress;->getBytesSent()J

    move-result-wide v0

    invoke-virtual {p0}, Lcom/metamoji/media/video/dialog/MfProgressDialog$Model;->getCurrentFile()Lcom/metamoji/media/video/dialog/MfProgressDialog$Model$UploadProgress;

    move-result-object p1

    invoke-virtual {p1}, Lcom/metamoji/media/video/dialog/MfProgressDialog$Model$UploadProgress;->getTotalBytesToSend()J

    move-result-wide v2

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/metamoji/media/video/dialog/MfProgressDialog$Model;->setBytesProgress(JJ)V

    .line 293
    invoke-virtual {p0}, Lcom/metamoji/media/video/dialog/MfProgressDialog$Model;->getUploadedCount()I

    move-result p1

    invoke-virtual {p0}, Lcom/metamoji/media/video/dialog/MfProgressDialog$Model;->getErrorCount()I

    move-result v0

    invoke-virtual {p0}, Lcom/metamoji/media/video/dialog/MfProgressDialog$Model;->getTotalCount()I

    move-result v1

    invoke-direct {p0, p1, v0, v1}, Lcom/metamoji/media/video/dialog/MfProgressDialog$Model;->setFilesProgress(III)V

    return-void

    .line 295
    :cond_1
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0, p1}, Lcom/metamoji/media/video/dialog/MfProgressDialog$Model;->showMessage(Ljava/lang/String;)V

    return-void
.end method

.method public isFinished()Z
    .locals 1

    .line 263
    invoke-super {p0}, Lcom/metamoji/media/video/VfVideoFileManager$IMultiUploadingProgress;->isFinished()Z

    move-result v0

    return v0
.end method

.method public isSucceeded()Z
    .locals 1

    .line 263
    invoke-super {p0}, Lcom/metamoji/media/video/VfVideoFileManager$IMultiUploadingProgress;->isSucceeded()Z

    move-result v0

    return v0
.end method

.method public final resetMessage()V
    .locals 2

    const/4 v0, 0x0

    .line 367
    iput-object v0, p0, Lcom/metamoji/media/video/dialog/MfProgressDialog$Model;->errorMessage:Ljava/lang/String;

    const-wide/16 v0, 0x0

    .line 368
    invoke-direct {p0, v0, v1, v0, v1}, Lcom/metamoji/media/video/dialog/MfProgressDialog$Model;->setBytesProgress(JJ)V

    const/4 v0, 0x0

    .line 369
    invoke-direct {p0, v0, v0, v0}, Lcom/metamoji/media/video/dialog/MfProgressDialog$Model;->setFilesProgress(III)V

    .line 370
    iget-object v0, p0, Lcom/metamoji/media/video/dialog/MfProgressDialog$Model;->this$0:Lcom/metamoji/media/video/dialog/MfProgressDialog;

    invoke-static {v0}, Lcom/metamoji/media/video/dialog/MfProgressDialog;->access$getControl$p(Lcom/metamoji/media/video/dialog/MfProgressDialog;)Lcom/metamoji/media/video/dialog/MfProgressDialog$Control;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/metamoji/media/video/dialog/MfProgressDialog$Control;->resetMessage()V

    :cond_0
    return-void
.end method

.method public setErrorCount(I)V
    .locals 0

    .line 278
    iput p1, p0, Lcom/metamoji/media/video/dialog/MfProgressDialog$Model;->errorCount:I

    return-void
.end method

.method public final setErrorMessage(Ljava/lang/String;)V
    .locals 0

    .line 272
    iput-object p1, p0, Lcom/metamoji/media/video/dialog/MfProgressDialog$Model;->errorMessage:Ljava/lang/String;

    return-void
.end method

.method public setTotalCount(I)V
    .locals 0

    .line 276
    iput p1, p0, Lcom/metamoji/media/video/dialog/MfProgressDialog$Model;->totalCount:I

    return-void
.end method

.method public setUploadedCount(I)V
    .locals 0

    .line 277
    iput p1, p0, Lcom/metamoji/media/video/dialog/MfProgressDialog$Model;->uploadedCount:I

    return-void
.end method

.method public final showMessage(Ljava/lang/String;)V
    .locals 1

    const-string v0, "msg"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 359
    iput-object p1, p0, Lcom/metamoji/media/video/dialog/MfProgressDialog$Model;->errorMessage:Ljava/lang/String;

    .line 360
    iget-object v0, p0, Lcom/metamoji/media/video/dialog/MfProgressDialog$Model;->this$0:Lcom/metamoji/media/video/dialog/MfProgressDialog;

    invoke-static {v0}, Lcom/metamoji/media/video/dialog/MfProgressDialog;->access$getControl$p(Lcom/metamoji/media/video/dialog/MfProgressDialog;)Lcom/metamoji/media/video/dialog/MfProgressDialog$Control;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/metamoji/media/video/dialog/MfProgressDialog$Control;->showMessage(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final updateProgress(Lcom/metamoji/media/video/VfVideoFileManager$IMultiUploadingProgress;)V
    .locals 5

    const-string v0, "progress"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 303
    invoke-interface {p1}, Lcom/metamoji/media/video/VfVideoFileManager$IMultiUploadingProgress;->getCurrentFile()Lcom/metamoji/media/video/VfVideoFileManager$IUploadProgress;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 305
    invoke-interface {v0}, Lcom/metamoji/media/video/VfVideoFileManager$IUploadProgress;->getBytesSent()J

    move-result-wide v1

    invoke-interface {v0}, Lcom/metamoji/media/video/VfVideoFileManager$IUploadProgress;->getTotalBytesToSend()J

    move-result-wide v3

    invoke-direct {p0, v1, v2, v3, v4}, Lcom/metamoji/media/video/dialog/MfProgressDialog$Model;->setBytesProgress(JJ)V

    return-void

    .line 307
    :cond_0
    invoke-interface {p1}, Lcom/metamoji/media/video/VfVideoFileManager$IMultiUploadingProgress;->isFinished()Z

    move-result v0

    if-nez v0, :cond_1

    const-wide/16 v0, 0x0

    .line 308
    invoke-direct {p0, v0, v1, v0, v1}, Lcom/metamoji/media/video/dialog/MfProgressDialog$Model;->setBytesProgress(JJ)V

    .line 310
    :cond_1
    invoke-interface {p1}, Lcom/metamoji/media/video/VfVideoFileManager$IMultiUploadingProgress;->getUploadedCount()I

    move-result v0

    invoke-interface {p1}, Lcom/metamoji/media/video/VfVideoFileManager$IMultiUploadingProgress;->getErrorCount()I

    move-result v1

    invoke-interface {p1}, Lcom/metamoji/media/video/VfVideoFileManager$IMultiUploadingProgress;->getTotalCount()I

    move-result p1

    invoke-direct {p0, v0, v1, p1}, Lcom/metamoji/media/video/dialog/MfProgressDialog$Model;->setFilesProgress(III)V

    return-void
.end method
