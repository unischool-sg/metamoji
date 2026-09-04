.class Lcom/metamoji/nt/NtMazecImsManager$9;
.super Ljava/lang/Object;
.source "NtMazecImsManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/nt/NtMazecImsManager;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/nt/NtMazecImsManager;


# direct methods
.method constructor <init>(Lcom/metamoji/nt/NtMazecImsManager;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 403
    iput-object p1, p0, Lcom/metamoji/nt/NtMazecImsManager$9;->this$0:Lcom/metamoji/nt/NtMazecImsManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 405
    iget-object v0, p0, Lcom/metamoji/nt/NtMazecImsManager$9;->this$0:Lcom/metamoji/nt/NtMazecImsManager;

    invoke-static {v0}, Lcom/metamoji/nt/NtMazecImsManager;->-$$Nest$fget_ims(Lcom/metamoji/nt/NtMazecImsManager;)Lcom/metamoji/mazec/MazecIms;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/mazec/MazecIms;->onBindInput()V

    return-void
.end method
