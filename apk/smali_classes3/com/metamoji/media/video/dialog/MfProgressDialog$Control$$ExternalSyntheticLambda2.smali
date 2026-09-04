.class public final synthetic Lcom/metamoji/media/video/dialog/MfProgressDialog$Control$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic f$0:Lcom/metamoji/media/video/dialog/MfProgressDialog$Control;


# direct methods
.method public synthetic constructor <init>(Lcom/metamoji/media/video/dialog/MfProgressDialog$Control;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/metamoji/media/video/dialog/MfProgressDialog$Control$$ExternalSyntheticLambda2;->f$0:Lcom/metamoji/media/video/dialog/MfProgressDialog$Control;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/metamoji/media/video/dialog/MfProgressDialog$Control$$ExternalSyntheticLambda2;->f$0:Lcom/metamoji/media/video/dialog/MfProgressDialog$Control;

    invoke-static {v0}, Lcom/metamoji/media/video/dialog/MfProgressDialog$Control;->bytesProgressBar_delegate$lambda$1(Lcom/metamoji/media/video/dialog/MfProgressDialog$Control;)Landroid/widget/ProgressBar;

    move-result-object v0

    return-object v0
.end method
