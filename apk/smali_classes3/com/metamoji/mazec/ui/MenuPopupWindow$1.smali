.class Lcom/metamoji/mazec/ui/MenuPopupWindow$1;
.super Ljava/lang/Object;
.source "MenuPopupWindow.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/mazec/ui/MenuPopupWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/mazec/ui/MenuPopupWindow;


# direct methods
.method constructor <init>(Lcom/metamoji/mazec/ui/MenuPopupWindow;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 36
    iput-object p1, p0, Lcom/metamoji/mazec/ui/MenuPopupWindow$1;->this$0:Lcom/metamoji/mazec/ui/MenuPopupWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 38
    iget-object v0, p0, Lcom/metamoji/mazec/ui/MenuPopupWindow$1;->this$0:Lcom/metamoji/mazec/ui/MenuPopupWindow;

    invoke-virtual {v0}, Lcom/metamoji/mazec/ui/MenuPopupWindow;->dismiss()V

    return-void
.end method
