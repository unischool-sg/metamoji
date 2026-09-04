.class Lcom/metamoji/ui/ScrollButtonManager$ScrollButton$1;
.super Ljava/lang/Object;
.source "ScrollButtonManager.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/ui/ScrollButtonManager$ScrollButton;->init(ILcom/metamoji/noteanytime/EditorActivity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/metamoji/ui/ScrollButtonManager$ScrollButton;


# direct methods
.method constructor <init>(Lcom/metamoji/ui/ScrollButtonManager$ScrollButton;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 1206
    iput-object p1, p0, Lcom/metamoji/ui/ScrollButtonManager$ScrollButton$1;->this$1:Lcom/metamoji/ui/ScrollButtonManager$ScrollButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 1209
    iget-object p1, p0, Lcom/metamoji/ui/ScrollButtonManager$ScrollButton$1;->this$1:Lcom/metamoji/ui/ScrollButtonManager$ScrollButton;

    invoke-static {p1}, Lcom/metamoji/ui/ScrollButtonManager$ScrollButton;->-$$Nest$fget_timerRepeat(Lcom/metamoji/ui/ScrollButtonManager$ScrollButton;)Lcom/metamoji/cm/UiTimer;

    move-result-object p1

    invoke-virtual {p1}, Lcom/metamoji/cm/UiTimer;->cancel()V

    .line 1210
    iget-object p1, p0, Lcom/metamoji/ui/ScrollButtonManager$ScrollButton$1;->this$1:Lcom/metamoji/ui/ScrollButtonManager$ScrollButton;

    invoke-static {p1}, Lcom/metamoji/ui/ScrollButtonManager$ScrollButton;->-$$Nest$monClick(Lcom/metamoji/ui/ScrollButtonManager$ScrollButton;)V

    return-void
.end method
