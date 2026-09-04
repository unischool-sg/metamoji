.class Lcom/metamoji/nt/itemlist/NtItemList$1;
.super Ljava/lang/Object;
.source "NtItemList.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/nt/itemlist/NtItemList;->initializeList(Lcom/metamoji/nt/NtNoteController;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/nt/itemlist/NtItemList;


# direct methods
.method constructor <init>(Lcom/metamoji/nt/itemlist/NtItemList;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 140
    iput-object p1, p0, Lcom/metamoji/nt/itemlist/NtItemList$1;->this$0:Lcom/metamoji/nt/itemlist/NtItemList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    .line 143
    iget-object p1, p0, Lcom/metamoji/nt/itemlist/NtItemList$1;->this$0:Lcom/metamoji/nt/itemlist/NtItemList;

    invoke-static {p1}, Lcom/metamoji/nt/itemlist/NtItemList;->-$$Nest$fget_detector(Lcom/metamoji/nt/itemlist/NtItemList;)Landroid/view/GestureDetector;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 144
    iget-object p1, p0, Lcom/metamoji/nt/itemlist/NtItemList$1;->this$0:Lcom/metamoji/nt/itemlist/NtItemList;

    invoke-static {p1}, Lcom/metamoji/nt/itemlist/NtItemList;->-$$Nest$fget_detector(Lcom/metamoji/nt/itemlist/NtItemList;)Landroid/view/GestureDetector;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
