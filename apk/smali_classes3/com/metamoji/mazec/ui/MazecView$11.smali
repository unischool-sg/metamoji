.class Lcom/metamoji/mazec/ui/MazecView$11;
.super Ljava/lang/Object;
.source "MazecView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/mazec/ui/MazecView;->initMenuBar(Lcom/metamoji/mazec/MazecIms;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/mazec/ui/MazecView;


# direct methods
.method constructor <init>(Lcom/metamoji/mazec/ui/MazecView;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 772
    iput-object p1, p0, Lcom/metamoji/mazec/ui/MazecView$11;->this$0:Lcom/metamoji/mazec/ui/MazecView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 775
    invoke-static {}, Lcom/metamoji/mazec/MazecIms;->getInstance()Lcom/metamoji/mazec/MazecIms;

    move-result-object p1

    .line 776
    iget-object v0, p0, Lcom/metamoji/mazec/ui/MazecView$11;->this$0:Lcom/metamoji/mazec/ui/MazecView;

    invoke-static {v0}, Lcom/metamoji/mazec/ui/MazecView;->-$$Nest$mnotifyButtonClicked(Lcom/metamoji/mazec/ui/MazecView;)V

    .line 777
    invoke-virtual {p1}, Lcom/metamoji/mazec/MazecIms;->getInputMode()I

    move-result v0

    const/4 v1, 0x3

    const/16 v2, 0x42

    if-ne v0, v1, :cond_0

    .line 778
    iget-object p1, p0, Lcom/metamoji/mazec/ui/MazecView$11;->this$0:Lcom/metamoji/mazec/ui/MazecView;

    invoke-static {p1}, Lcom/metamoji/mazec/ui/MazecView;->-$$Nest$fgetmKeyboardManager(Lcom/metamoji/mazec/ui/MazecView;)Lcom/metamoji/mazec/ui/KeyboardManager;

    move-result-object p1

    invoke-virtual {p1, v2}, Lcom/metamoji/mazec/ui/KeyboardManager;->keyPress(I)V

    return-void

    .line 781
    :cond_0
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x0

    const/16 v2, 0x9

    .line 780
    invoke-virtual {p1, v2, v0, v1}, Lcom/metamoji/mazec/MazecIms;->onEvent(ILjava/lang/Object;Ljava/lang/Object;)Z

    return-void
.end method
