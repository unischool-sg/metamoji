.class Lcom/metamoji/mazec/ui/MenuPopupWindow$8;
.super Ljava/lang/Object;
.source "MenuPopupWindow.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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


# direct methods
.method constructor <init>(Lcom/metamoji/mazec/ui/MenuPopupWindow;Lcom/metamoji/mazec/MazecIms;)V
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

    .line 167
    iput-object p1, p0, Lcom/metamoji/mazec/ui/MenuPopupWindow$8;->this$0:Lcom/metamoji/mazec/ui/MenuPopupWindow;

    iput-object p2, p0, Lcom/metamoji/mazec/ui/MenuPopupWindow$8;->val$ims:Lcom/metamoji/mazec/MazecIms;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 169
    iget-object p1, p0, Lcom/metamoji/mazec/ui/MenuPopupWindow$8;->this$0:Lcom/metamoji/mazec/ui/MenuPopupWindow;

    invoke-virtual {p1}, Lcom/metamoji/mazec/ui/MenuPopupWindow;->dismiss()V

    .line 170
    iget-object p1, p0, Lcom/metamoji/mazec/ui/MenuPopupWindow$8;->val$ims:Lcom/metamoji/mazec/MazecIms;

    invoke-virtual {p1}, Lcom/metamoji/mazec/MazecIms;->showSettings()V

    return-void
.end method
