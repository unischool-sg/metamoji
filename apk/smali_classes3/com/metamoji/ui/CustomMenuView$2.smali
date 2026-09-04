.class Lcom/metamoji/ui/CustomMenuView$2;
.super Ljava/lang/Object;
.source "CustomMenuView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/ui/CustomMenuView;->notifyEnableCommand(Lcom/metamoji/nt/NtCommand;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/ui/CustomMenuView;

.field final synthetic val$command:Lcom/metamoji/nt/NtCommand;

.field final synthetic val$enabled:Z


# direct methods
.method constructor <init>(Lcom/metamoji/ui/CustomMenuView;Lcom/metamoji/nt/NtCommand;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 702
    iput-object p1, p0, Lcom/metamoji/ui/CustomMenuView$2;->this$0:Lcom/metamoji/ui/CustomMenuView;

    iput-object p2, p0, Lcom/metamoji/ui/CustomMenuView$2;->val$command:Lcom/metamoji/nt/NtCommand;

    iput-boolean p3, p0, Lcom/metamoji/ui/CustomMenuView$2;->val$enabled:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 706
    iget-object v0, p0, Lcom/metamoji/ui/CustomMenuView$2;->this$0:Lcom/metamoji/ui/CustomMenuView;

    iget-object v0, v0, Lcom/metamoji/ui/CustomMenuView;->_menuContainer:Lcom/metamoji/ui/menu/UiContextSubMenuContainer;

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    .line 708
    :goto_0
    iget-object v1, p0, Lcom/metamoji/ui/CustomMenuView$2;->this$0:Lcom/metamoji/ui/CustomMenuView;

    iget-object v1, v1, Lcom/metamoji/ui/CustomMenuView;->_menuContainer:Lcom/metamoji/ui/menu/UiContextSubMenuContainer;

    invoke-virtual {v1}, Lcom/metamoji/ui/menu/UiContextSubMenuContainer;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 709
    iget-object v1, p0, Lcom/metamoji/ui/CustomMenuView$2;->this$0:Lcom/metamoji/ui/CustomMenuView;

    iget-object v1, v1, Lcom/metamoji/ui/CustomMenuView;->_menuContainer:Lcom/metamoji/ui/menu/UiContextSubMenuContainer;

    invoke-virtual {v1, v0}, Lcom/metamoji/ui/menu/UiContextSubMenuContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 710
    instance-of v2, v1, Lcom/metamoji/ui/CustomMenuView$MenuItemView;

    if-eqz v2, :cond_1

    .line 711
    check-cast v1, Lcom/metamoji/ui/CustomMenuView$MenuItemView;

    .line 714
    invoke-virtual {v1}, Lcom/metamoji/ui/CustomMenuView$MenuItemView;->get_item()Lcom/metamoji/ui/UiMenuItem;

    move-result-object v2

    invoke-virtual {v2}, Lcom/metamoji/ui/UiMenuItem;->get_command()Ljava/lang/Object;

    move-result-object v2

    .line 715
    instance-of v3, v2, Lcom/metamoji/nt/NtCommand;

    if-eqz v3, :cond_1

    .line 716
    check-cast v2, Lcom/metamoji/nt/NtCommand;

    .line 717
    iget-object v3, p0, Lcom/metamoji/ui/CustomMenuView$2;->val$command:Lcom/metamoji/nt/NtCommand;

    if-ne v2, v3, :cond_1

    .line 718
    iget-boolean v2, p0, Lcom/metamoji/ui/CustomMenuView$2;->val$enabled:Z

    if-eqz v2, :cond_0

    const/high16 v2, 0x3f800000    # 1.0f

    goto :goto_1

    :cond_0
    const/high16 v2, 0x3f000000    # 0.5f

    :goto_1
    invoke-virtual {v1, v2}, Lcom/metamoji/ui/CustomMenuView$MenuItemView;->setAlpha(F)V

    .line 719
    iget-boolean v2, p0, Lcom/metamoji/ui/CustomMenuView$2;->val$enabled:Z

    invoke-virtual {v1, v2}, Lcom/metamoji/ui/CustomMenuView$MenuItemView;->setEnabled(Z)V

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method
