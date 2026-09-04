.class public final synthetic Lcom/metamoji/li/view/panel/LoginQRCodeFragment$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroidx/activity/result/ActivityResultCallback;


# instance fields
.field public final synthetic f$0:Lcom/metamoji/li/view/panel/LoginQRCodeFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/metamoji/li/view/panel/LoginQRCodeFragment;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/metamoji/li/view/panel/LoginQRCodeFragment$$ExternalSyntheticLambda2;->f$0:Lcom/metamoji/li/view/panel/LoginQRCodeFragment;

    return-void
.end method


# virtual methods
.method public final onActivityResult(Ljava/lang/Object;)V
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/metamoji/li/view/panel/LoginQRCodeFragment$$ExternalSyntheticLambda2;->f$0:Lcom/metamoji/li/view/panel/LoginQRCodeFragment;

    check-cast p1, Ljava/lang/Boolean;

    invoke-static {v0, p1}, Lcom/metamoji/li/view/panel/LoginQRCodeFragment;->requestPermissionLauncher$lambda$0(Lcom/metamoji/li/view/panel/LoginQRCodeFragment;Ljava/lang/Boolean;)V

    return-void
.end method
