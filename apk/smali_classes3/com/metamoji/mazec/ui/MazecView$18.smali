.class Lcom/metamoji/mazec/ui/MazecView$18;
.super Ljava/lang/Object;
.source "MazecView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/mazec/ui/MazecView;->initMenuButton(Lcom/metamoji/mazec/MazecIms;)V
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

    .line 951
    iput-object p1, p0, Lcom/metamoji/mazec/ui/MazecView$18;->this$0:Lcom/metamoji/mazec/ui/MazecView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 953
    iget-object p1, p0, Lcom/metamoji/mazec/ui/MazecView$18;->this$0:Lcom/metamoji/mazec/ui/MazecView;

    invoke-static {p1}, Lcom/metamoji/mazec/ui/MazecView;->-$$Nest$mnotifyButtonClicked(Lcom/metamoji/mazec/ui/MazecView;)V

    .line 954
    invoke-static {}, Lcom/metamoji/mazec/MazecIms;->getInstance()Lcom/metamoji/mazec/MazecIms;

    move-result-object p1

    invoke-virtual {p1}, Lcom/metamoji/mazec/MazecIms;->showSettings()V

    return-void
.end method
