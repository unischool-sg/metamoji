.class Lcom/metamoji/mazec/ui/ToggleImageView$2;
.super Ljava/lang/Object;
.source "ToggleImageView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/mazec/ui/ToggleImageView;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/mazec/ui/ToggleImageView;


# direct methods
.method constructor <init>(Lcom/metamoji/mazec/ui/ToggleImageView;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 70
    iput-object p1, p0, Lcom/metamoji/mazec/ui/ToggleImageView$2;->this$0:Lcom/metamoji/mazec/ui/ToggleImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 72
    iget-object p1, p0, Lcom/metamoji/mazec/ui/ToggleImageView$2;->this$0:Lcom/metamoji/mazec/ui/ToggleImageView;

    invoke-static {p1}, Lcom/metamoji/mazec/ui/ToggleImageView;->-$$Nest$fgetmCheckState(Lcom/metamoji/mazec/ui/ToggleImageView;)I

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-static {p1, v0}, Lcom/metamoji/mazec/ui/ToggleImageView;->-$$Nest$fputmCheckState(Lcom/metamoji/mazec/ui/ToggleImageView;I)V

    .line 73
    iget-object p1, p0, Lcom/metamoji/mazec/ui/ToggleImageView$2;->this$0:Lcom/metamoji/mazec/ui/ToggleImageView;

    invoke-static {p1}, Lcom/metamoji/mazec/ui/ToggleImageView;->-$$Nest$fgetmOnChangeListener(Lcom/metamoji/mazec/ui/ToggleImageView;)Lcom/metamoji/mazec/ui/ToggleImageView$OnChangeListener;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 74
    iget-object p1, p0, Lcom/metamoji/mazec/ui/ToggleImageView$2;->this$0:Lcom/metamoji/mazec/ui/ToggleImageView;

    invoke-static {p1}, Lcom/metamoji/mazec/ui/ToggleImageView;->-$$Nest$fgetmOnChangeListener(Lcom/metamoji/mazec/ui/ToggleImageView;)Lcom/metamoji/mazec/ui/ToggleImageView$OnChangeListener;

    move-result-object p1

    iget-object v0, p0, Lcom/metamoji/mazec/ui/ToggleImageView$2;->this$0:Lcom/metamoji/mazec/ui/ToggleImageView;

    invoke-interface {p1, v0}, Lcom/metamoji/mazec/ui/ToggleImageView$OnChangeListener;->onChange(Lcom/metamoji/mazec/ui/ToggleImageView;)V

    .line 76
    :cond_0
    iget-object p1, p0, Lcom/metamoji/mazec/ui/ToggleImageView$2;->this$0:Lcom/metamoji/mazec/ui/ToggleImageView;

    invoke-static {p1}, Lcom/metamoji/mazec/ui/ToggleImageView;->-$$Nest$fgetmCheckState(Lcom/metamoji/mazec/ui/ToggleImageView;)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/metamoji/mazec/ui/ToggleImageView;->setImageLevel(I)V

    return-void
.end method
