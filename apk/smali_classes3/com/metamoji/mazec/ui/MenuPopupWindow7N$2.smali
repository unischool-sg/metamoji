.class Lcom/metamoji/mazec/ui/MenuPopupWindow7N$2;
.super Ljava/lang/Object;
.source "MenuPopupWindow7N.java"

# interfaces
.implements Lcom/metamoji/mazec/ui/MenuSelectBase$OnSelectListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/mazec/ui/MenuPopupWindow7N;->loadView(Lcom/metamoji/mazec/MazecIms;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/mazec/ui/MenuPopupWindow7N;

.field final synthetic val$ims:Lcom/metamoji/mazec/MazecIms;

.field final synthetic val$mslc:Lcom/metamoji/mazec/ui/MenuSelectLineColor;


# direct methods
.method constructor <init>(Lcom/metamoji/mazec/ui/MenuPopupWindow7N;Lcom/metamoji/mazec/MazecIms;Lcom/metamoji/mazec/ui/MenuSelectLineColor;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 78
    iput-object p1, p0, Lcom/metamoji/mazec/ui/MenuPopupWindow7N$2;->this$0:Lcom/metamoji/mazec/ui/MenuPopupWindow7N;

    iput-object p2, p0, Lcom/metamoji/mazec/ui/MenuPopupWindow7N$2;->val$ims:Lcom/metamoji/mazec/MazecIms;

    iput-object p3, p0, Lcom/metamoji/mazec/ui/MenuPopupWindow7N$2;->val$mslc:Lcom/metamoji/mazec/ui/MenuSelectLineColor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSelect(I)V
    .locals 1

    .line 81
    iget-object p1, p0, Lcom/metamoji/mazec/ui/MenuPopupWindow7N$2;->val$ims:Lcom/metamoji/mazec/MazecIms;

    iget-object v0, p0, Lcom/metamoji/mazec/ui/MenuPopupWindow7N$2;->val$mslc:Lcom/metamoji/mazec/ui/MenuSelectLineColor;

    invoke-virtual {v0}, Lcom/metamoji/mazec/ui/MenuSelectLineColor;->getSelectedLineColor()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/metamoji/mazec/MazecIms;->setLineColor(I)V

    .line 82
    iget-object p1, p0, Lcom/metamoji/mazec/ui/MenuPopupWindow7N$2;->this$0:Lcom/metamoji/mazec/ui/MenuPopupWindow7N;

    invoke-virtual {p1}, Lcom/metamoji/mazec/ui/MenuPopupWindow7N;->delayedDismiss()V

    return-void
.end method
