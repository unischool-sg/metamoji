.class Lcom/metamoji/ui/CustomMenuView$3;
.super Ljava/lang/Object;
.source "CustomMenuView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/ui/CustomMenuView;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/ui/CustomMenuView;


# direct methods
.method constructor <init>(Lcom/metamoji/ui/CustomMenuView;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 1132
    iput-object p1, p0, Lcom/metamoji/ui/CustomMenuView$3;->this$0:Lcom/metamoji/ui/CustomMenuView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1135
    iget-object v0, p0, Lcom/metamoji/ui/CustomMenuView$3;->this$0:Lcom/metamoji/ui/CustomMenuView;

    invoke-virtual {v0}, Lcom/metamoji/ui/CustomMenuView;->CloseMenu()Z

    return-void
.end method
