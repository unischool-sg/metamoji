.class public final synthetic Lcom/metamoji/un/video/UnVideoUnit$UploadProgress$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic f$0:Lcom/metamoji/un/video/UnVideoUnit$UploadProgress;


# direct methods
.method public synthetic constructor <init>(Lcom/metamoji/un/video/UnVideoUnit$UploadProgress;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/metamoji/un/video/UnVideoUnit$UploadProgress$$ExternalSyntheticLambda1;->f$0:Lcom/metamoji/un/video/UnVideoUnit$UploadProgress;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/metamoji/un/video/UnVideoUnit$UploadProgress$$ExternalSyntheticLambda1;->f$0:Lcom/metamoji/un/video/UnVideoUnit$UploadProgress;

    invoke-static {v0}, Lcom/metamoji/un/video/UnVideoUnit$UploadProgress;->msgWaiting_delegate$lambda$1(Lcom/metamoji/un/video/UnVideoUnit$UploadProgress;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
