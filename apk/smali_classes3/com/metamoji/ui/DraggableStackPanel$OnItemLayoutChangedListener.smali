.class Lcom/metamoji/ui/DraggableStackPanel$OnItemLayoutChangedListener;
.super Ljava/lang/Object;
.source "DraggableStackPanel.java"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/ui/DraggableStackPanel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OnItemLayoutChangedListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/ui/DraggableStackPanel;


# direct methods
.method private constructor <init>(Lcom/metamoji/ui/DraggableStackPanel;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 354
    iput-object p1, p0, Lcom/metamoji/ui/DraggableStackPanel$OnItemLayoutChangedListener;->this$0:Lcom/metamoji/ui/DraggableStackPanel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/metamoji/ui/DraggableStackPanel;Lcom/metamoji/ui/DraggableStackPanel-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/metamoji/ui/DraggableStackPanel$OnItemLayoutChangedListener;-><init>(Lcom/metamoji/ui/DraggableStackPanel;)V

    return-void
.end method


# virtual methods
.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 0

    .line 357
    iget-object p2, p0, Lcom/metamoji/ui/DraggableStackPanel$OnItemLayoutChangedListener;->this$0:Lcom/metamoji/ui/DraggableStackPanel;

    invoke-static {p2, p1}, Lcom/metamoji/ui/DraggableStackPanel;->-$$Nest$monItemSizeChanged(Lcom/metamoji/ui/DraggableStackPanel;Landroid/view/View;)V

    return-void
.end method
