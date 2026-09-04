.class Lcom/metamoji/mazec/ui/SelectColorView$1;
.super Ljava/lang/Object;
.source "SelectColorView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/mazec/ui/SelectColorView;->initView(IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/mazec/ui/SelectColorView;


# direct methods
.method constructor <init>(Lcom/metamoji/mazec/ui/SelectColorView;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 53
    iput-object p1, p0, Lcom/metamoji/mazec/ui/SelectColorView$1;->this$0:Lcom/metamoji/mazec/ui/SelectColorView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 55
    iget-object p1, p0, Lcom/metamoji/mazec/ui/SelectColorView$1;->this$0:Lcom/metamoji/mazec/ui/SelectColorView;

    const/4 v0, 0x2

    invoke-static {p1, v0}, Lcom/metamoji/mazec/ui/SelectColorView;->-$$Nest$fputmDispMode(Lcom/metamoji/mazec/ui/SelectColorView;I)V

    .line 56
    iget-object p1, p0, Lcom/metamoji/mazec/ui/SelectColorView$1;->this$0:Lcom/metamoji/mazec/ui/SelectColorView;

    invoke-virtual {p1}, Lcom/metamoji/mazec/ui/SelectColorView;->updateView()V

    .line 57
    iget-object p1, p0, Lcom/metamoji/mazec/ui/SelectColorView$1;->this$0:Lcom/metamoji/mazec/ui/SelectColorView;

    invoke-static {p1}, Lcom/metamoji/mazec/ui/SelectColorView;->-$$Nest$fgetmOnSelectColorListener(Lcom/metamoji/mazec/ui/SelectColorView;)Lcom/metamoji/mazec/ui/SelectColorView$OnSelectColorListener;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 58
    iget-object p1, p0, Lcom/metamoji/mazec/ui/SelectColorView$1;->this$0:Lcom/metamoji/mazec/ui/SelectColorView;

    invoke-static {p1}, Lcom/metamoji/mazec/ui/SelectColorView;->-$$Nest$fgetmOnSelectColorListener(Lcom/metamoji/mazec/ui/SelectColorView;)Lcom/metamoji/mazec/ui/SelectColorView$OnSelectColorListener;

    move-result-object p1

    const/4 v0, 0x1

    invoke-interface {p1, v0}, Lcom/metamoji/mazec/ui/SelectColorView$OnSelectColorListener;->onDispChange(Z)V

    :cond_0
    return-void
.end method
