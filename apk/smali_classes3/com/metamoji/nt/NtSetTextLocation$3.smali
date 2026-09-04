.class Lcom/metamoji/nt/NtSetTextLocation$3;
.super Ljava/util/TimerTask;
.source "NtSetTextLocation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/nt/NtSetTextLocation;->startAutoCloseTimer()V
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

    .line 285
    iput-object p1, p0, Lcom/metamoji/nt/NtSetTextLocation$3;->this$0:Lcom/metamoji/nt/NtSetTextLocation;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 288
    iget-object v0, p0, Lcom/metamoji/nt/NtSetTextLocation$3;->this$0:Lcom/metamoji/nt/NtSetTextLocation;

    invoke-static {v0}, Lcom/metamoji/nt/NtSetTextLocation;->-$$Nest$monTimerAutoClose(Lcom/metamoji/nt/NtSetTextLocation;)V

    return-void
.end method
