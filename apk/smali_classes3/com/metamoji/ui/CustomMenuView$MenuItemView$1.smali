.class Lcom/metamoji/ui/CustomMenuView$MenuItemView$1;
.super Ljava/lang/Object;
.source "CustomMenuView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/ui/CustomMenuView$MenuItemView;->onLayout(ZIIII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/metamoji/ui/CustomMenuView$MenuItemView;


# direct methods
.method constructor <init>(Lcom/metamoji/ui/CustomMenuView$MenuItemView;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 1443
    iput-object p1, p0, Lcom/metamoji/ui/CustomMenuView$MenuItemView$1;->this$1:Lcom/metamoji/ui/CustomMenuView$MenuItemView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1446
    iget-object v0, p0, Lcom/metamoji/ui/CustomMenuView$MenuItemView$1;->this$1:Lcom/metamoji/ui/CustomMenuView$MenuItemView;

    invoke-virtual {v0}, Lcom/metamoji/ui/CustomMenuView$MenuItemView;->updateImage()V

    return-void
.end method
