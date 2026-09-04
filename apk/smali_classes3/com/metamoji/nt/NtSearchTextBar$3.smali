.class Lcom/metamoji/nt/NtSearchTextBar$3;
.super Ljava/lang/Object;
.source "NtSearchTextBar.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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

    .line 102
    iput-object p1, p0, Lcom/metamoji/nt/NtSearchTextBar$3;->this$0:Lcom/metamoji/nt/NtSearchTextBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 104
    iget-object p1, p0, Lcom/metamoji/nt/NtSearchTextBar$3;->this$0:Lcom/metamoji/nt/NtSearchTextBar;

    invoke-static {p1}, Lcom/metamoji/nt/NtSearchTextBar;->-$$Nest$mhandleNextClicked(Lcom/metamoji/nt/NtSearchTextBar;)V

    return-void
.end method
