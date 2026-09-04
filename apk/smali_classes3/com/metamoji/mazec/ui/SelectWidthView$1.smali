.class Lcom/metamoji/mazec/ui/SelectWidthView$1;
.super Ljava/lang/Object;
.source "SelectWidthView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/mazec/ui/SelectWidthView;->initView(IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/mazec/ui/SelectWidthView;


# direct methods
.method constructor <init>(Lcom/metamoji/mazec/ui/SelectWidthView;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 52
    iput-object p1, p0, Lcom/metamoji/mazec/ui/SelectWidthView$1;->this$0:Lcom/metamoji/mazec/ui/SelectWidthView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 54
    iget-object p1, p0, Lcom/metamoji/mazec/ui/SelectWidthView$1;->this$0:Lcom/metamoji/mazec/ui/SelectWidthView;

    const/4 v0, 0x2

    invoke-static {p1, v0}, Lcom/metamoji/mazec/ui/SelectWidthView;->-$$Nest$fputmDispMode(Lcom/metamoji/mazec/ui/SelectWidthView;I)V

    .line 55
    iget-object p1, p0, Lcom/metamoji/mazec/ui/SelectWidthView$1;->this$0:Lcom/metamoji/mazec/ui/SelectWidthView;

    invoke-virtual {p1}, Lcom/metamoji/mazec/ui/SelectWidthView;->updateView()V

    .line 56
    iget-object p1, p0, Lcom/metamoji/mazec/ui/SelectWidthView$1;->this$0:Lcom/metamoji/mazec/ui/SelectWidthView;

    invoke-static {p1}, Lcom/metamoji/mazec/ui/SelectWidthView;->-$$Nest$fgetmOnSelectWidthListener(Lcom/metamoji/mazec/ui/SelectWidthView;)Lcom/metamoji/mazec/ui/SelectWidthView$OnSelectWidthListener;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 57
    iget-object p1, p0, Lcom/metamoji/mazec/ui/SelectWidthView$1;->this$0:Lcom/metamoji/mazec/ui/SelectWidthView;

    invoke-static {p1}, Lcom/metamoji/mazec/ui/SelectWidthView;->-$$Nest$fgetmOnSelectWidthListener(Lcom/metamoji/mazec/ui/SelectWidthView;)Lcom/metamoji/mazec/ui/SelectWidthView$OnSelectWidthListener;

    move-result-object p1

    const/4 v0, 0x1

    invoke-interface {p1, v0}, Lcom/metamoji/mazec/ui/SelectWidthView$OnSelectWidthListener;->onDispChange(Z)V

    :cond_0
    return-void
.end method
