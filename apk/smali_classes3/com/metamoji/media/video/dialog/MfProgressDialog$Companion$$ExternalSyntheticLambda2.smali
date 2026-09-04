.class public final synthetic Lcom/metamoji/media/video/dialog/MfProgressDialog$Companion$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic f$0:Lcom/metamoji/media/video/VfVideoFileManager$IMultiUploadingProgress;


# direct methods
.method public synthetic constructor <init>(Lcom/metamoji/media/video/VfVideoFileManager$IMultiUploadingProgress;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/metamoji/media/video/dialog/MfProgressDialog$Companion$$ExternalSyntheticLambda2;->f$0:Lcom/metamoji/media/video/VfVideoFileManager$IMultiUploadingProgress;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/metamoji/media/video/dialog/MfProgressDialog$Companion$$ExternalSyntheticLambda2;->f$0:Lcom/metamoji/media/video/VfVideoFileManager$IMultiUploadingProgress;

    invoke-static {v0}, Lcom/metamoji/media/video/dialog/MfProgressDialog$Companion;->doUpload$lambda$3$lambda$2(Lcom/metamoji/media/video/VfVideoFileManager$IMultiUploadingProgress;)Lkotlin/Unit;

    move-result-object v0

    return-object v0
.end method
