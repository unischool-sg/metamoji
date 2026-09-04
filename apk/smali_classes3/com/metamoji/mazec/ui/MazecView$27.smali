.class Lcom/metamoji/mazec/ui/MazecView$27;
.super Ljava/lang/Object;
.source "MazecView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/mazec/ui/MazecView;->initSmartPhoneOnlyUIParts(Lcom/metamoji/mazec/MazecIms;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/mazec/ui/MazecView;


# direct methods
.method constructor <init>(Lcom/metamoji/mazec/ui/MazecView;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 1451
    iput-object p1, p0, Lcom/metamoji/mazec/ui/MazecView$27;->this$0:Lcom/metamoji/mazec/ui/MazecView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 1454
    iget-object p1, p0, Lcom/metamoji/mazec/ui/MazecView$27;->this$0:Lcom/metamoji/mazec/ui/MazecView;

    invoke-static {p1}, Lcom/metamoji/mazec/ui/MazecView;->-$$Nest$mnotifyButtonClicked(Lcom/metamoji/mazec/ui/MazecView;)V

    .line 1455
    invoke-static {}, Lcom/metamoji/mazec/MazecIms;->getInstance()Lcom/metamoji/mazec/MazecIms;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/metamoji/mazec/MazecIms;->requestHideSelf(I)V

    return-void
.end method
