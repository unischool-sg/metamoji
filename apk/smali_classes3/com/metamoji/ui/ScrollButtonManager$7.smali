.class Lcom/metamoji/ui/ScrollButtonManager$7;
.super Ljava/lang/Object;
.source "ScrollButtonManager.java"

# interfaces
.implements Lcom/metamoji/cm/ICmEventHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/ui/ScrollButtonManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/metamoji/cm/ICmEventHandler<",
        "Lcom/metamoji/nt/NtUserDefaults;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/ui/ScrollButtonManager;


# direct methods
.method constructor <init>(Lcom/metamoji/ui/ScrollButtonManager;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 522
    iput-object p1, p0, Lcom/metamoji/ui/ScrollButtonManager$7;->this$0:Lcom/metamoji/ui/ScrollButtonManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public invoke(Lcom/metamoji/nt/NtUserDefaults;)V
    .locals 2

    .line 525
    const-string v0, "OneTapScrollerDisplayDelay"

    const v1, 0x3dcccccd    # 0.1f

    invoke-virtual {p1, v0, v1}, Lcom/metamoji/nt/NtUserDefaults;->getFloatValue(Ljava/lang/String;F)F

    move-result p1

    .line 528
    iget-object v0, p0, Lcom/metamoji/ui/ScrollButtonManager$7;->this$0:Lcom/metamoji/ui/ScrollButtonManager;

    const/high16 v1, 0x447a0000    # 1000.0f

    mul-float/2addr p1, v1

    float-to-int p1, p1

    invoke-static {v0, p1}, Lcom/metamoji/ui/ScrollButtonManager;->-$$Nest$fput_showDelay(Lcom/metamoji/ui/ScrollButtonManager;I)V

    return-void
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 522
    check-cast p1, Lcom/metamoji/nt/NtUserDefaults;

    invoke-virtual {p0, p1}, Lcom/metamoji/ui/ScrollButtonManager$7;->invoke(Lcom/metamoji/nt/NtUserDefaults;)V

    return-void
.end method
