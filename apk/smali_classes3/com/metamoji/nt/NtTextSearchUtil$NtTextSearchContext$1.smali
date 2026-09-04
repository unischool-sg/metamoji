.class Lcom/metamoji/nt/NtTextSearchUtil$NtTextSearchContext$1;
.super Ljava/lang/Object;
.source "NtTextSearchUtil.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/nt/NtTextSearchUtil$NtTextSearchContext;->endSearchContext()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/nt/NtTextSearchUtil$NtTextSearchContext;


# direct methods
.method constructor <init>(Lcom/metamoji/nt/NtTextSearchUtil$NtTextSearchContext;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 300
    iput-object p1, p0, Lcom/metamoji/nt/NtTextSearchUtil$NtTextSearchContext$1;->this$0:Lcom/metamoji/nt/NtTextSearchUtil$NtTextSearchContext;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 303
    iget-object v0, p0, Lcom/metamoji/nt/NtTextSearchUtil$NtTextSearchContext$1;->this$0:Lcom/metamoji/nt/NtTextSearchUtil$NtTextSearchContext;

    invoke-virtual {v0}, Lcom/metamoji/nt/NtTextSearchUtil$NtTextSearchContext;->refreshDetailWindow()V

    return-void
.end method
