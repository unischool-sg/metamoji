.class Lcom/metamoji/ui/dialog/ShapeSettings$9;
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

    .line 359
    iput-object p1, p0, Lcom/metamoji/ui/dialog/ShapeSettings$9;->this$0:Lcom/metamoji/ui/dialog/ShapeSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 363
    iget-object p1, p0, Lcom/metamoji/ui/dialog/ShapeSettings$9;->this$0:Lcom/metamoji/ui/dialog/ShapeSettings;

    iget-object v0, p1, Lcom/metamoji/ui/dialog/ShapeSettings;->mButtonArrow:Lcom/metamoji/ui/common/UiButton;

    iget-object v1, p0, Lcom/metamoji/ui/dialog/ShapeSettings$9;->this$0:Lcom/metamoji/ui/dialog/ShapeSettings;

    iget-object v1, v1, Lcom/metamoji/ui/dialog/ShapeSettings;->mStyleArrow:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    const/16 v2, 0x8

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {p1, v0, v1}, Lcom/metamoji/ui/dialog/ShapeSettings;->-$$Nest$mupdateStyleView(Lcom/metamoji/ui/dialog/ShapeSettings;Lcom/metamoji/ui/common/UiButton;Z)V

    return-void
.end method
