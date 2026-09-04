.class Lcom/metamoji/mazec/ui/MenuPopupWindow7N$1;
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

.field final synthetic val$mslw:Lcom/metamoji/mazec/ui/MenuSelectLineWidth;


# direct methods
.method constructor <init>(Lcom/metamoji/mazec/ui/MenuPopupWindow7N;Lcom/metamoji/mazec/MazecIms;Lcom/metamoji/mazec/ui/MenuSelectLineWidth;)V
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

    .line 61
    iput-object p1, p0, Lcom/metamoji/mazec/ui/MenuPopupWindow7N$1;->this$0:Lcom/metamoji/mazec/ui/MenuPopupWindow7N;

    iput-object p2, p0, Lcom/metamoji/mazec/ui/MenuPopupWindow7N$1;->val$ims:Lcom/metamoji/mazec/MazecIms;

    iput-object p3, p0, Lcom/metamoji/mazec/ui/MenuPopupWindow7N$1;->val$mslw:Lcom/metamoji/mazec/ui/MenuSelectLineWidth;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSelect(I)V
    .locals 1

    .line 64
    iget-object p1, p0, Lcom/metamoji/mazec/ui/MenuPopupWindow7N$1;->val$ims:Lcom/metamoji/mazec/MazecIms;

    iget-object v0, p0, Lcom/metamoji/mazec/ui/MenuPopupWindow7N$1;->val$mslw:Lcom/metamoji/mazec/ui/MenuSelectLineWidth;

    invoke-virtual {v0}, Lcom/metamoji/mazec/ui/MenuSelectLineWidth;->getSelectedLineWidth()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/metamoji/mazec/MazecIms;->setLineWidthType(I)V

    .line 65
    iget-object p1, p0, Lcom/metamoji/mazec/ui/MenuPopupWindow7N$1;->this$0:Lcom/metamoji/mazec/ui/MenuPopupWindow7N;

    invoke-virtual {p1}, Lcom/metamoji/mazec/ui/MenuPopupWindow7N;->delayedDismiss()V

    return-void
.end method
