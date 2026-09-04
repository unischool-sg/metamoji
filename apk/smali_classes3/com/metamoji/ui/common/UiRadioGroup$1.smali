.class Lcom/metamoji/ui/common/UiRadioGroup$1;
.super Ljava/lang/Object;
.source "UiRadioGroup.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/ui/common/UiRadioGroup;->justifyWidthWithLargestChild()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/ui/common/UiRadioGroup;


# direct methods
.method constructor <init>(Lcom/metamoji/ui/common/UiRadioGroup;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 250
    iput-object p1, p0, Lcom/metamoji/ui/common/UiRadioGroup$1;->this$0:Lcom/metamoji/ui/common/UiRadioGroup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    const/4 v0, 0x0

    .line 254
    :goto_0
    iget-object v1, p0, Lcom/metamoji/ui/common/UiRadioGroup$1;->this$0:Lcom/metamoji/ui/common/UiRadioGroup;

    invoke-virtual {v1}, Lcom/metamoji/ui/common/UiRadioGroup;->getChildCount()I

    move-result v1

    .line 258
    iget-object v2, p0, Lcom/metamoji/ui/common/UiRadioGroup$1;->this$0:Lcom/metamoji/ui/common/UiRadioGroup;

    if-ge v0, v1, :cond_0

    .line 255
    invoke-virtual {v2, v0}, Lcom/metamoji/ui/common/UiRadioGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 256
    invoke-virtual {v1}, Landroid/view/View;->forceLayout()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 258
    :cond_0
    invoke-virtual {v2}, Lcom/metamoji/ui/common/UiRadioGroup;->forceLayout()V

    return-void
.end method
