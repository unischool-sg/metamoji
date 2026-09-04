.class Lcom/metamoji/nt/NtSetTextLocation$2;
.super Ljava/lang/Object;
.source "NtSetTextLocation.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/nt/NtSetTextLocation;->onHiddenChanged(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/nt/NtSetTextLocation;


# direct methods
.method constructor <init>(Lcom/metamoji/nt/NtSetTextLocation;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 242
    iput-object p1, p0, Lcom/metamoji/nt/NtSetTextLocation$2;->this$0:Lcom/metamoji/nt/NtSetTextLocation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    .line 246
    iget-object p1, p0, Lcom/metamoji/nt/NtSetTextLocation$2;->this$0:Lcom/metamoji/nt/NtSetTextLocation;

    invoke-static {p1}, Lcom/metamoji/nt/NtSetTextLocation;->-$$Nest$fgetm_gesture(Lcom/metamoji/nt/NtSetTextLocation;)Landroid/view/GestureDetector;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method
