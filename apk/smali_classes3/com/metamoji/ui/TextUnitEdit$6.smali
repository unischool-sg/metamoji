.class Lcom/metamoji/ui/TextUnitEdit$6;
.super Ljava/lang/Object;
.source "TextUnitEdit.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/ui/TextUnitEdit;->setNeedsCheckCaretHideOrNot(Lcom/metamoji/un/text/model/TextPosition;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/ui/TextUnitEdit;


# direct methods
.method constructor <init>(Lcom/metamoji/ui/TextUnitEdit;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 1156
    iput-object p1, p0, Lcom/metamoji/ui/TextUnitEdit$6;->this$0:Lcom/metamoji/ui/TextUnitEdit;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1166
    iget-object v0, p0, Lcom/metamoji/ui/TextUnitEdit$6;->this$0:Lcom/metamoji/ui/TextUnitEdit;

    invoke-virtual {v0}, Lcom/metamoji/ui/TextUnitEdit;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/metamoji/ui/TextUnitEdit$6;->this$0:Lcom/metamoji/ui/TextUnitEdit;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    return-void
.end method
