.class Lcom/metamoji/ui/dialog/ShapeSettings$1;
.super Ljava/lang/Object;
.source "ShapeSettings.java"

# interfaces
.implements Landroid/widget/RadioGroup$OnCheckedChangeListener;


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

    .line 240
    iput-object p1, p0, Lcom/metamoji/ui/dialog/ShapeSettings$1;->this$0:Lcom/metamoji/ui/dialog/ShapeSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/RadioGroup;I)V
    .locals 0

    .line 244
    iget-object p1, p0, Lcom/metamoji/ui/dialog/ShapeSettings$1;->this$0:Lcom/metamoji/ui/dialog/ShapeSettings;

    iget-object p2, p1, Lcom/metamoji/ui/dialog/ShapeSettings;->mGroupShapeSetting:Lcom/metamoji/ui/common/UiRadioGroup;

    invoke-virtual {p2}, Lcom/metamoji/ui/common/UiRadioGroup;->getCurrentButtonIndex()I

    move-result p2

    iput p2, p1, Lcom/metamoji/ui/dialog/ShapeSettings;->mCurrentShapeSet:I

    .line 245
    iget-object p1, p0, Lcom/metamoji/ui/dialog/ShapeSettings$1;->this$0:Lcom/metamoji/ui/dialog/ShapeSettings;

    invoke-static {p1}, Lcom/metamoji/ui/dialog/ShapeSettings;->-$$Nest$mupdateSample(Lcom/metamoji/ui/dialog/ShapeSettings;)V

    return-void
.end method
