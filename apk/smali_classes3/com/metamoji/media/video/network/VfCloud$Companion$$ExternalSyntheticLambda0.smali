.class public final synthetic Lcom/metamoji/media/video/network/VfCloud$Companion$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic f$0:Lcom/metamoji/lib/utils/Funcies3;

.field public final synthetic f$1:Lcom/metamoji/media/video/uploader/VfUploadStatusDB$Record;


# direct methods
.method public synthetic constructor <init>(Lcom/metamoji/lib/utils/Funcies3;Lcom/metamoji/media/video/uploader/VfUploadStatusDB$Record;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/metamoji/media/video/network/VfCloud$Companion$$ExternalSyntheticLambda0;->f$0:Lcom/metamoji/lib/utils/Funcies3;

    iput-object p2, p0, Lcom/metamoji/media/video/network/VfCloud$Companion$$ExternalSyntheticLambda0;->f$1:Lcom/metamoji/media/video/uploader/VfUploadStatusDB$Record;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 0
    iget-object v0, p0, Lcom/metamoji/media/video/network/VfCloud$Companion$$ExternalSyntheticLambda0;->f$0:Lcom/metamoji/lib/utils/Funcies3;

    iget-object v1, p0, Lcom/metamoji/media/video/network/VfCloud$Companion$$ExternalSyntheticLambda0;->f$1:Lcom/metamoji/media/video/uploader/VfUploadStatusDB$Record;

    check-cast p1, Lcom/metamoji/media/video/VfVideoFileManager$IUploadProgress;

    invoke-static {v0, v1, p1}, Lcom/metamoji/media/video/network/VfCloud$Companion;->uploadMovie$lambda$0(Lcom/metamoji/lib/utils/Funcies3;Lcom/metamoji/media/video/uploader/VfUploadStatusDB$Record;Lcom/metamoji/media/video/VfVideoFileManager$IUploadProgress;)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method
