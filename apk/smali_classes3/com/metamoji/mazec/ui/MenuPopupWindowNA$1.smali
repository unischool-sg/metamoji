.class Lcom/metamoji/mazec/ui/MenuPopupWindowNA$1;
.super Ljava/lang/Object;
.source "MenuPopupWindowNA.java"

# interfaces
.implements Lcom/metamoji/mazec/ui/MenuSelectBase$OnSelectListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/mazec/ui/MenuPopupWindowNA;->loadView(Lcom/metamoji/mazec/MazecIms;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/mazec/ui/MenuPopupWindowNA;

.field final synthetic val$ims:Lcom/metamoji/mazec/MazecIms;


# direct methods
.method constructor <init>(Lcom/metamoji/mazec/ui/MenuPopupWindowNA;Lcom/metamoji/mazec/MazecIms;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 51
    iput-object p1, p0, Lcom/metamoji/mazec/ui/MenuPopupWindowNA$1;->this$0:Lcom/metamoji/mazec/ui/MenuPopupWindowNA;

    iput-object p2, p0, Lcom/metamoji/mazec/ui/MenuPopupWindowNA$1;->val$ims:Lcom/metamoji/mazec/MazecIms;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSelect(I)V
    .locals 1

    .line 54
    iget-object v0, p0, Lcom/metamoji/mazec/ui/MenuPopupWindowNA$1;->val$ims:Lcom/metamoji/mazec/MazecIms;

    invoke-virtual {v0, p1}, Lcom/metamoji/mazec/MazecIms;->setCurrentPenIndex(I)V

    .line 55
    iget-object p1, p0, Lcom/metamoji/mazec/ui/MenuPopupWindowNA$1;->this$0:Lcom/metamoji/mazec/ui/MenuPopupWindowNA;

    invoke-virtual {p1}, Lcom/metamoji/mazec/ui/MenuPopupWindowNA;->delayedDismiss()V

    return-void
.end method
