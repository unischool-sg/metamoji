.class Lcom/metamoji/ui/CustomHoverSelectorView$1;
.super Ljava/lang/Object;
.source "CustomHoverSelectorView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/ui/CustomHoverSelectorView;->tinyPalletShow()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/ui/CustomHoverSelectorView;


# direct methods
.method constructor <init>(Lcom/metamoji/ui/CustomHoverSelectorView;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 340
    iput-object p1, p0, Lcom/metamoji/ui/CustomHoverSelectorView$1;->this$0:Lcom/metamoji/ui/CustomHoverSelectorView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 343
    iget-object v0, p0, Lcom/metamoji/ui/CustomHoverSelectorView$1;->this$0:Lcom/metamoji/ui/CustomHoverSelectorView;

    invoke-static {v0}, Lcom/metamoji/ui/CustomHoverSelectorView;->-$$Nest$fget_pallet(Lcom/metamoji/ui/CustomHoverSelectorView;)Lcom/metamoji/ui/UiTinyPalletViewGroup;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/ui/UiTinyPalletViewGroup;->show()V

    .line 344
    iget-object v0, p0, Lcom/metamoji/ui/CustomHoverSelectorView$1;->this$0:Lcom/metamoji/ui/CustomHoverSelectorView;

    invoke-virtual {v0}, Lcom/metamoji/ui/CustomHoverSelectorView;->invalidate()V

    return-void
.end method
