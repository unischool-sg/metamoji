.class final Lcom/metamoji/media/video/dialog/MfProgressDialog$Companion$doUpload$s$1$1;
.super Ljava/lang/Object;
.source "MfProgressDialog.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/media/video/dialog/MfProgressDialog$Companion;->doUpload(ZLkotlin/jvm/functions/Function0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lkotlin/jvm/functions/Function0<",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    k = 0x3
    mv = {
        0x2,
        0x2,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic $isMulti:Z

.field final synthetic $result:Lcom/metamoji/media/video/VfVideoFileManager$IMultiUploadResult;

.field final synthetic $targetTicket:Ljava/lang/String;

.field final synthetic $uploader:Lcom/metamoji/media/video/uploader/VfUploader;


# direct methods
.method constructor <init>(ZLcom/metamoji/media/video/VfVideoFileManager$IMultiUploadResult;Ljava/lang/String;Lcom/metamoji/media/video/uploader/VfUploader;)V
    .locals 0

    iput-boolean p1, p0, Lcom/metamoji/media/video/dialog/MfProgressDialog$Companion$doUpload$s$1$1;->$isMulti:Z

    iput-object p2, p0, Lcom/metamoji/media/video/dialog/MfProgressDialog$Companion$doUpload$s$1$1;->$result:Lcom/metamoji/media/video/VfVideoFileManager$IMultiUploadResult;

    iput-object p3, p0, Lcom/metamoji/media/video/dialog/MfProgressDialog$Companion$doUpload$s$1$1;->$targetTicket:Ljava/lang/String;

    iput-object p4, p0, Lcom/metamoji/media/video/dialog/MfProgressDialog$Companion$doUpload$s$1$1;->$uploader:Lcom/metamoji/media/video/uploader/VfUploader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 171
    invoke-virtual {p0}, Lcom/metamoji/media/video/dialog/MfProgressDialog$Companion$doUpload$s$1$1;->invoke()V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public final invoke()V
    .locals 5

    .line 172
    invoke-static {}, Lcom/metamoji/media/video/dialog/MfProgressDialog;->access$getDialogInstance$cp()Lcom/metamoji/media/video/dialog/MfProgressDialog;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 174
    invoke-static {}, Lcom/metamoji/media/video/dialog/MfProgressDialog;->access$getContinuationTask$cp()Lkotlin/coroutines/Continuation;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v2, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    sget-object v2, Lcom/metamoji/media/video/dialog/MfProgressDialog$Companion$ContinuationStatus;->CANCEL:Lcom/metamoji/media/video/dialog/MfProgressDialog$Companion$ContinuationStatus;

    invoke-static {v2}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v2}, Lkotlin/coroutines/Continuation;->resumeWith(Ljava/lang/Object;)V

    .line 175
    :cond_0
    sget-object v0, Lcom/metamoji/media/video/dialog/MfProgressDialog;->Companion:Lcom/metamoji/media/video/dialog/MfProgressDialog$Companion;

    invoke-static {v1}, Lcom/metamoji/media/video/dialog/MfProgressDialog;->access$setContinuationTask$cp(Lkotlin/coroutines/Continuation;)V

    return-void

    .line 178
    :cond_1
    iget-boolean v2, p0, Lcom/metamoji/media/video/dialog/MfProgressDialog$Companion$doUpload$s$1$1;->$isMulti:Z

    if-eqz v2, :cond_3

    .line 180
    invoke-static {}, Lcom/metamoji/media/video/dialog/MfProgressDialog;->access$getDialogCanceller$cp()Lcom/metamoji/media/video/network/NwUpload$UploadCanceller;

    move-result-object v1

    invoke-virtual {v1}, Lcom/metamoji/media/video/network/NwUpload$UploadCanceller;->getCancelled()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 182
    sget v1, Lcom/metamoji/noteanytime/R$string;->MMJNT_LSTR_VIDEO_ERR_CANCELLED_MULTI:I

    invoke-virtual {v0, v1}, Lcom/metamoji/media/video/dialog/MfProgressDialog;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 184
    :cond_2
    sget v1, Lcom/metamoji/noteanytime/R$string;->MMJNT_LSTR_VIDEO_ERR_NOT_UPLOADED_MULTI:I

    iget-object v2, p0, Lcom/metamoji/media/video/dialog/MfProgressDialog$Companion$doUpload$s$1$1;->$result:Lcom/metamoji/media/video/VfVideoFileManager$IMultiUploadResult;

    invoke-interface {v2}, Lcom/metamoji/media/video/VfVideoFileManager$IMultiUploadResult;->getErrorCount()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/metamoji/media/video/dialog/MfProgressDialog;->access$formatString(Lcom/metamoji/media/video/dialog/MfProgressDialog;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 188
    :cond_3
    invoke-static {}, Lcom/metamoji/media/video/dialog/MfProgressDialog;->access$getDialogCanceller$cp()Lcom/metamoji/media/video/network/NwUpload$UploadCanceller;

    move-result-object v2

    invoke-virtual {v2}, Lcom/metamoji/media/video/network/NwUpload$UploadCanceller;->getCancelled()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 189
    iget-object v2, p0, Lcom/metamoji/media/video/dialog/MfProgressDialog$Companion$doUpload$s$1$1;->$targetTicket:Ljava/lang/String;

    if-eqz v2, :cond_4

    .line 191
    iget-object v2, p0, Lcom/metamoji/media/video/dialog/MfProgressDialog$Companion$doUpload$s$1$1;->$uploader:Lcom/metamoji/media/video/uploader/VfUploader;

    invoke-virtual {v2}, Lcom/metamoji/media/video/uploader/VfUploader;->getStatusDb()Lcom/metamoji/media/video/uploader/VfUploadStatusDB;

    move-result-object v2

    iget-object v3, p0, Lcom/metamoji/media/video/dialog/MfProgressDialog$Companion$doUpload$s$1$1;->$targetTicket:Ljava/lang/String;

    sget-object v4, Lcom/metamoji/media/video/uploader/VfUploadStatusDB$Status;->INIT:Lcom/metamoji/media/video/uploader/VfUploadStatusDB$Status;

    invoke-virtual {v2, v3, v4}, Lcom/metamoji/media/video/uploader/VfUploadStatusDB;->updateStatusByTicket(Ljava/lang/String;Lcom/metamoji/media/video/uploader/VfUploadStatusDB$Status;)Z

    .line 192
    iget-object v2, p0, Lcom/metamoji/media/video/dialog/MfProgressDialog$Companion$doUpload$s$1$1;->$uploader:Lcom/metamoji/media/video/uploader/VfUploader;

    invoke-virtual {v2}, Lcom/metamoji/media/video/uploader/VfUploader;->getObserver()Lcom/metamoji/media/video/uploader/VfUploadObserver;

    move-result-object v2

    iget-object v3, p0, Lcom/metamoji/media/video/dialog/MfProgressDialog$Companion$doUpload$s$1$1;->$targetTicket:Ljava/lang/String;

    sget-object v4, Lcom/metamoji/media/video/uploader/VfUploadStatusDB$Status;->INIT:Lcom/metamoji/media/video/uploader/VfUploadStatusDB$Status;

    invoke-virtual {v2, v3, v4, v1}, Lcom/metamoji/media/video/uploader/VfUploadObserver;->fireEvent(Ljava/lang/String;Lcom/metamoji/media/video/uploader/VfUploadStatusDB$Status;Lcom/metamoji/media/video/VfVideoFileManager$IUploadProgress;)V

    .line 196
    :cond_4
    sget v1, Lcom/metamoji/noteanytime/R$string;->MMJNT_LSTR_VIDEO_ERR_CANCELLED:I

    invoke-virtual {v0, v1}, Lcom/metamoji/media/video/dialog/MfProgressDialog;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 200
    :cond_5
    sget v1, Lcom/metamoji/noteanytime/R$string;->MMJNT_LSTR_VIDEO_ERR_NOT_UPLOADED:I

    invoke-virtual {v0, v1}, Lcom/metamoji/media/video/dialog/MfProgressDialog;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 191
    :goto_0
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 204
    invoke-static {v0}, Lcom/metamoji/media/video/dialog/MfProgressDialog;->access$getModel$p(Lcom/metamoji/media/video/dialog/MfProgressDialog;)Lcom/metamoji/media/video/dialog/MfProgressDialog$Model;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/metamoji/media/video/dialog/MfProgressDialog$Model;->showMessage(Ljava/lang/String;)V

    return-void
.end method
