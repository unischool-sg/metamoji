.class Lcom/metamoji/cs/dc/CsDigitalCabinetUserManager$DisconnectCallback$1$1;
.super Ljava/lang/Object;
.source "CsDigitalCabinetUserManager.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/cs/dc/CsDigitalCabinetUserManager$DisconnectCallback$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/metamoji/cs/dc/CsDigitalCabinetUserManager$DisconnectCallback$1;


# direct methods
.method constructor <init>(Lcom/metamoji/cs/dc/CsDigitalCabinetUserManager$DisconnectCallback$1;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 1021
    iput-object p1, p0, Lcom/metamoji/cs/dc/CsDigitalCabinetUserManager$DisconnectCallback$1$1;->this$2:Lcom/metamoji/cs/dc/CsDigitalCabinetUserManager$DisconnectCallback$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 1025
    invoke-static {}, Lcom/metamoji/ui/UiCurrentActivityManager;->getInstance()Lcom/metamoji/ui/UiCurrentActivityManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/metamoji/ui/UiCurrentActivityManager;->getCurrentActivityOrNull()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 1026
    instance-of p2, p1, Lcom/metamoji/ui/cabinet/CabinetActivityInterface;

    if-eqz p2, :cond_0

    .line 1027
    invoke-static {p1}, Lcom/metamoji/noteanytime/MainActivity;->refreshSyncButton(Landroidx/fragment/app/FragmentActivity;)V

    :cond_0
    return-void
.end method
