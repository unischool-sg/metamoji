.class Lcom/metamoji/mazec/ui/SelectFilterView$1;
.super Ljava/lang/Object;
.source "SelectFilterView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/mazec/ui/SelectFilterView;->initView(IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/mazec/ui/SelectFilterView;


# direct methods
.method constructor <init>(Lcom/metamoji/mazec/ui/SelectFilterView;)V
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
    iput-object p1, p0, Lcom/metamoji/mazec/ui/SelectFilterView$1;->this$0:Lcom/metamoji/mazec/ui/SelectFilterView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 55
    iget-object p1, p0, Lcom/metamoji/mazec/ui/SelectFilterView$1;->this$0:Lcom/metamoji/mazec/ui/SelectFilterView;

    const/4 v0, 0x2

    invoke-static {p1, v0}, Lcom/metamoji/mazec/ui/SelectFilterView;->-$$Nest$fputmDispMode(Lcom/metamoji/mazec/ui/SelectFilterView;I)V

    .line 56
    iget-object p1, p0, Lcom/metamoji/mazec/ui/SelectFilterView$1;->this$0:Lcom/metamoji/mazec/ui/SelectFilterView;

    invoke-virtual {p1}, Lcom/metamoji/mazec/ui/SelectFilterView;->updateView()V

    .line 57
    iget-object p1, p0, Lcom/metamoji/mazec/ui/SelectFilterView$1;->this$0:Lcom/metamoji/mazec/ui/SelectFilterView;

    invoke-static {p1}, Lcom/metamoji/mazec/ui/SelectFilterView;->-$$Nest$fgetmOnSelectFilterListener(Lcom/metamoji/mazec/ui/SelectFilterView;)Lcom/metamoji/mazec/ui/SelectFilterView$OnSelectFilterListener;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 58
    iget-object p1, p0, Lcom/metamoji/mazec/ui/SelectFilterView$1;->this$0:Lcom/metamoji/mazec/ui/SelectFilterView;

    invoke-static {p1}, Lcom/metamoji/mazec/ui/SelectFilterView;->-$$Nest$fgetmOnSelectFilterListener(Lcom/metamoji/mazec/ui/SelectFilterView;)Lcom/metamoji/mazec/ui/SelectFilterView$OnSelectFilterListener;

    move-result-object p1

    const/4 v0, 0x1

    invoke-interface {p1, v0}, Lcom/metamoji/mazec/ui/SelectFilterView$OnSelectFilterListener;->onDispChange(Z)V

    :cond_0
    return-void
.end method
