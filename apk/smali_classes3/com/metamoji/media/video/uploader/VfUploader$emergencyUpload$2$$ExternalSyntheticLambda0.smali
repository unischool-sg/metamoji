.class public final synthetic Lcom/metamoji/media/video/uploader/VfUploader$emergencyUpload$2$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# instance fields
.field public final synthetic f$0:Lcom/metamoji/media/video/uploader/VfUploader$UploadingProgress;

.field public final synthetic f$1:Lkotlin/jvm/functions/Function1;

.field public final synthetic f$2:Lcom/metamoji/media/video/uploader/VfUploader$MultiUploadingProgress;


# direct methods
.method public synthetic constructor <init>(Lcom/metamoji/media/video/uploader/VfUploader$UploadingProgress;Lkotlin/jvm/functions/Function1;Lcom/metamoji/media/video/uploader/VfUploader$MultiUploadingProgress;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/metamoji/media/video/uploader/VfUploader$emergencyUpload$2$$ExternalSyntheticLambda0;->f$0:Lcom/metamoji/media/video/uploader/VfUploader$UploadingProgress;

    iput-object p2, p0, Lcom/metamoji/media/video/uploader/VfUploader$emergencyUpload$2$$ExternalSyntheticLambda0;->f$1:Lkotlin/jvm/functions/Function1;

    iput-object p3, p0, Lcom/metamoji/media/video/uploader/VfUploader$emergencyUpload$2$$ExternalSyntheticLambda0;->f$2:Lcom/metamoji/media/video/uploader/VfUploader$MultiUploadingProgress;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    .line 0
    iget-object v0, p0, Lcom/metamoji/media/video/uploader/VfUploader$emergencyUpload$2$$ExternalSyntheticLambda0;->f$0:Lcom/metamoji/media/video/uploader/VfUploader$UploadingProgress;

    iget-object v1, p0, Lcom/metamoji/media/video/uploader/VfUploader$emergencyUpload$2$$ExternalSyntheticLambda0;->f$1:Lkotlin/jvm/functions/Function1;

    iget-object v2, p0, Lcom/metamoji/media/video/uploader/VfUploader$emergencyUpload$2$$ExternalSyntheticLambda0;->f$2:Lcom/metamoji/media/video/uploader/VfUploader$MultiUploadingProgress;

    move-object v3, p1

    check-cast v3, Ljava/lang/String;

    move-object v4, p2

    check-cast v4, Lcom/metamoji/media/video/uploader/VfUploadStatusDB$Status;

    move-object v5, p3

    check-cast v5, Lcom/metamoji/media/video/VfVideoFileManager$IUploadProgress;

    invoke-static/range {v0 .. v5}, Lcom/metamoji/media/video/uploader/VfUploader$emergencyUpload$2;->invokeSuspend$lambda$0(Lcom/metamoji/media/video/uploader/VfUploader$UploadingProgress;Lkotlin/jvm/functions/Function1;Lcom/metamoji/media/video/uploader/VfUploader$MultiUploadingProgress;Ljava/lang/String;Lcom/metamoji/media/video/uploader/VfUploadStatusDB$Status;Lcom/metamoji/media/video/VfVideoFileManager$IUploadProgress;)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method
