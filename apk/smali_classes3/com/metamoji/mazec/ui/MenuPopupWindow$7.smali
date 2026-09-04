.class Lcom/metamoji/mazec/ui/MenuPopupWindow$7;
.super Ljava/lang/Object;
.source "MenuPopupWindow.java"

# interfaces
.implements Lcom/metamoji/mazec/ui/MenuSelectBase$OnSelectListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/mazec/ui/MenuPopupWindow;-><init>(Lcom/metamoji/mazec/MazecIms;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/mazec/ui/MenuPopupWindow;

.field final synthetic val$ims:Lcom/metamoji/mazec/MazecIms;

.field final synthetic val$msf:Lcom/metamoji/mazec/ui/MenuSelectFilter;


# direct methods
.method constructor <init>(Lcom/metamoji/mazec/ui/MenuPopupWindow;Lcom/metamoji/mazec/MazecIms;Lcom/metamoji/mazec/ui/MenuSelectFilter;)V
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

    .line 148
    iput-object p1, p0, Lcom/metamoji/mazec/ui/MenuPopupWindow$7;->this$0:Lcom/metamoji/mazec/ui/MenuPopupWindow;

    iput-object p2, p0, Lcom/metamoji/mazec/ui/MenuPopupWindow$7;->val$ims:Lcom/metamoji/mazec/MazecIms;

    iput-object p3, p0, Lcom/metamoji/mazec/ui/MenuPopupWindow$7;->val$msf:Lcom/metamoji/mazec/ui/MenuSelectFilter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSelect(I)V
    .locals 1

    .line 152
    iget-object p1, p0, Lcom/metamoji/mazec/ui/MenuPopupWindow$7;->val$ims:Lcom/metamoji/mazec/MazecIms;

    iget-object v0, p0, Lcom/metamoji/mazec/ui/MenuPopupWindow$7;->val$msf:Lcom/metamoji/mazec/ui/MenuSelectFilter;

    invoke-virtual {v0}, Lcom/metamoji/mazec/ui/MenuSelectFilter;->getSelectedFilter()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/metamoji/mazec/MazecIms;->setRecognizeFilter(I)V

    .line 153
    iget-object p1, p0, Lcom/metamoji/mazec/ui/MenuPopupWindow$7;->this$0:Lcom/metamoji/mazec/ui/MenuPopupWindow;

    invoke-virtual {p1}, Lcom/metamoji/mazec/ui/MenuPopupWindow;->delayedDismiss()V

    return-void
.end method
