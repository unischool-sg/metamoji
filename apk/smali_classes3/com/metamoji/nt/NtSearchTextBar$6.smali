.class Lcom/metamoji/nt/NtSearchTextBar$6;
.super Ljava/lang/Object;
.source "NtSearchTextBar.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/nt/NtSearchTextBar;->init(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/nt/NtSearchTextBar;


# direct methods
.method constructor <init>(Lcom/metamoji/nt/NtSearchTextBar;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 122
    iput-object p1, p0, Lcom/metamoji/nt/NtSearchTextBar$6;->this$0:Lcom/metamoji/nt/NtSearchTextBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    .line 124
    iget-object p1, p0, Lcom/metamoji/nt/NtSearchTextBar$6;->this$0:Lcom/metamoji/nt/NtSearchTextBar;

    invoke-static {p1, p2}, Lcom/metamoji/nt/NtSearchTextBar;->-$$Nest$mhandleBarrierViewTouched(Lcom/metamoji/nt/NtSearchTextBar;Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method
