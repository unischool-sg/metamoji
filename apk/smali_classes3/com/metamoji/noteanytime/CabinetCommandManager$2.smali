.class Lcom/metamoji/noteanytime/CabinetCommandManager$2;
.super Ljava/lang/Object;
.source "CabinetCommandManager.java"

# interfaces
.implements Lcom/metamoji/ns/INsCollaboAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/noteanytime/CabinetCommandManager;->performCommand(Lcom/metamoji/nt/NtCommand;Lcom/metamoji/cm/CmContext;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/noteanytime/CabinetCommandManager;


# direct methods
.method constructor <init>(Lcom/metamoji/noteanytime/CabinetCommandManager;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 195
    iput-object p1, p0, Lcom/metamoji/noteanytime/CabinetCommandManager$2;->this$0:Lcom/metamoji/noteanytime/CabinetCommandManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public action(Z)V
    .locals 1

    if-nez p1, :cond_0

    .line 201
    invoke-static {}, Lcom/metamoji/ui/UiCurrentActivityManager;->getInstance()Lcom/metamoji/ui/UiCurrentActivityManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/metamoji/ui/UiCurrentActivityManager;->getCurrentActivityOrNull()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 202
    instance-of v0, p1, Lcom/metamoji/noteanytime/MainActivity;

    if-eqz v0, :cond_0

    .line 203
    check-cast p1, Lcom/metamoji/noteanytime/MainActivity;

    invoke-virtual {p1}, Lcom/metamoji/noteanytime/MainActivity;->updateAttentionArea()V

    :cond_0
    return-void
.end method
