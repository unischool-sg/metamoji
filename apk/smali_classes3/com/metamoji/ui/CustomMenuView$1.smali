.class Lcom/metamoji/ui/CustomMenuView$1;
.super Ljava/lang/Object;
.source "CustomMenuView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/ui/CustomMenuView;->ShowActionMenu(Ljava/util/List;Lcom/metamoji/ui/MenuEventListener;Lcom/metamoji/ui/MenuCloseEventListener;Landroid/graphics/Rect;Lcom/metamoji/ui/CustomMenuView$MenuDirection;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/ui/CustomMenuView;


# direct methods
.method constructor <init>(Lcom/metamoji/ui/CustomMenuView;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 598
    iput-object p1, p0, Lcom/metamoji/ui/CustomMenuView$1;->this$0:Lcom/metamoji/ui/CustomMenuView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 601
    iget-object p1, p0, Lcom/metamoji/ui/CustomMenuView$1;->this$0:Lcom/metamoji/ui/CustomMenuView;

    invoke-static {p1}, Lcom/metamoji/ui/CustomMenuView;->-$$Nest$fget_menuEventListener(Lcom/metamoji/ui/CustomMenuView;)Lcom/metamoji/ui/MenuEventListener;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/metamoji/ui/CustomMenuView;->chgBackMenu(Lcom/metamoji/ui/MenuEventListener;)V

    return-void
.end method
