.class Lcom/metamoji/ui/dialog/ShapeSettings$3;
.super Ljava/lang/Object;
.source "ShapeSettings.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/ui/dialog/ShapeSettings;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/ui/dialog/ShapeSettings;


# direct methods
.method constructor <init>(Lcom/metamoji/ui/dialog/ShapeSettings;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 265
    iput-object p1, p0, Lcom/metamoji/ui/dialog/ShapeSettings$3;->this$0:Lcom/metamoji/ui/dialog/ShapeSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 269
    iget-object p1, p0, Lcom/metamoji/ui/dialog/ShapeSettings$3;->this$0:Lcom/metamoji/ui/dialog/ShapeSettings;

    iget-object v0, p1, Lcom/metamoji/ui/dialog/ShapeSettings;->mButtonShapeFill:Lcom/metamoji/ui/common/UiButton;

    invoke-virtual {v0}, Lcom/metamoji/ui/common/UiButton;->isSelected()Z

    move-result v0

    iput v0, p1, Lcom/metamoji/ui/dialog/ShapeSettings;->mFillShapeState:I

    .line 270
    iget-object p1, p0, Lcom/metamoji/ui/dialog/ShapeSettings$3;->this$0:Lcom/metamoji/ui/dialog/ShapeSettings;

    invoke-static {p1}, Lcom/metamoji/ui/dialog/ShapeSettings;->-$$Nest$mupdateSample(Lcom/metamoji/ui/dialog/ShapeSettings;)V

    return-void
.end method
