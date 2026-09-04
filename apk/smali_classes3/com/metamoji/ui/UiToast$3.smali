.class Lcom/metamoji/ui/UiToast$3;
.super Ljava/lang/Object;
.source "UiToast.java"

# interfaces
.implements Lcom/metamoji/cm/ICmEventHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/ui/UiToast;->show(Landroid/view/View;Landroid/view/View;I)Lcom/metamoji/ui/UiToast;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/metamoji/cm/ICmEventHandler<",
        "Lcom/metamoji/ui/UiCurrentActivityManager$ActivityInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 169
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public invoke(Lcom/metamoji/ui/UiCurrentActivityManager$ActivityInfo;)V
    .locals 0

    .line 172
    invoke-virtual {p1}, Lcom/metamoji/ui/UiCurrentActivityManager$ActivityInfo;->getNewActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    if-nez p1, :cond_0

    .line 174
    invoke-static {}, Lcom/metamoji/ui/UiToast;->dismissAll()V

    :cond_0
    return-void
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 169
    check-cast p1, Lcom/metamoji/ui/UiCurrentActivityManager$ActivityInfo;

    invoke-virtual {p0, p1}, Lcom/metamoji/ui/UiToast$3;->invoke(Lcom/metamoji/ui/UiCurrentActivityManager$ActivityInfo;)V

    return-void
.end method
