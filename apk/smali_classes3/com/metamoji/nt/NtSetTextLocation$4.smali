.class Lcom/metamoji/nt/NtSetTextLocation$4;
.super Ljava/lang/Object;
.source "NtSetTextLocation.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/nt/NtSetTextLocation;->onTimerAutoClose()V
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

    .line 306
    iput-object p1, p0, Lcom/metamoji/nt/NtSetTextLocation$4;->this$0:Lcom/metamoji/nt/NtSetTextLocation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 309
    iget-object v0, p0, Lcom/metamoji/nt/NtSetTextLocation$4;->this$0:Lcom/metamoji/nt/NtSetTextLocation;

    invoke-static {v0}, Lcom/metamoji/nt/NtSetTextLocation;->-$$Nest$mautoClose(Lcom/metamoji/nt/NtSetTextLocation;)V

    return-void
.end method
