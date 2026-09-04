.class Lcom/metamoji/ui/DraggableStackPanel$1;
.super Ljava/lang/Object;
.source "DraggableStackPanel.java"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/ui/DraggableStackPanel;-><init>(Landroid/widget/FrameLayout;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/ui/DraggableStackPanel;


# direct methods
.method constructor <init>(Lcom/metamoji/ui/DraggableStackPanel;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 48
    iput-object p1, p0, Lcom/metamoji/ui/DraggableStackPanel$1;->this$0:Lcom/metamoji/ui/DraggableStackPanel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 0

    .line 51
    iget-object p1, p0, Lcom/metamoji/ui/DraggableStackPanel$1;->this$0:Lcom/metamoji/ui/DraggableStackPanel;

    const/4 p2, 0x0

    const/4 p3, -0x1

    invoke-static {p1, p2, p3}, Lcom/metamoji/ui/DraggableStackPanel;->-$$Nest$mreposition(Lcom/metamoji/ui/DraggableStackPanel;II)V

    return-void
.end method
