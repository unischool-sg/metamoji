.class Lcom/metamoji/mazec/ui/MenuPopupWindow$6;
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

    .line 133
    iput-object p1, p0, Lcom/metamoji/mazec/ui/MenuPopupWindow$6;->this$0:Lcom/metamoji/mazec/ui/MenuPopupWindow;

    iput-object p2, p0, Lcom/metamoji/mazec/ui/MenuPopupWindow$6;->val$ims:Lcom/metamoji/mazec/MazecIms;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSelect(I)V
    .locals 1

    .line 137
    iget-object v0, p0, Lcom/metamoji/mazec/ui/MenuPopupWindow$6;->this$0:Lcom/metamoji/mazec/ui/MenuPopupWindow;

    invoke-virtual {v0}, Lcom/metamoji/mazec/ui/MenuPopupWindow;->dismiss()V

    .line 138
    iget-object v0, p0, Lcom/metamoji/mazec/ui/MenuPopupWindow$6;->val$ims:Lcom/metamoji/mazec/MazecIms;

    invoke-virtual {v0, p1}, Lcom/metamoji/mazec/MazecIms;->setInputMode(I)V

    return-void
.end method
