.class public final synthetic Lcom/metamoji/media/video/dialog/MfProgressDialog$Companion$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 0
    check-cast p1, Lcom/metamoji/media/video/VfVideoFileManager$IMultiUploadingProgress;

    invoke-static {p1}, Lcom/metamoji/media/video/dialog/MfProgressDialog$Companion;->doUpload$lambda$3(Lcom/metamoji/media/video/VfVideoFileManager$IMultiUploadingProgress;)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method
