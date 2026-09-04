.class Lcom/metamoji/ui/common/UiButtonHeader$1;
.super Ljava/lang/Object;
.source "UiButtonHeader.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/ui/common/UiButtonHeader;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/ui/common/UiButtonHeader;


# direct methods
.method constructor <init>(Lcom/metamoji/ui/common/UiButtonHeader;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 61
    iput-object p1, p0, Lcom/metamoji/ui/common/UiButtonHeader$1;->this$0:Lcom/metamoji/ui/common/UiButtonHeader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 65
    iget-object v0, p0, Lcom/metamoji/ui/common/UiButtonHeader$1;->this$0:Lcom/metamoji/ui/common/UiButtonHeader;

    invoke-static {v0}, Lcom/metamoji/ui/common/UiButtonHeader;->-$$Nest$fgetmListener(Lcom/metamoji/ui/common/UiButtonHeader;)Landroid/view/View$OnClickListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 66
    iget-object v0, p0, Lcom/metamoji/ui/common/UiButtonHeader$1;->this$0:Lcom/metamoji/ui/common/UiButtonHeader;

    invoke-static {v0}, Lcom/metamoji/ui/common/UiButtonHeader;->-$$Nest$fgetmListener(Lcom/metamoji/ui/common/UiButtonHeader;)Landroid/view/View$OnClickListener;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    :cond_0
    return-void
.end method
