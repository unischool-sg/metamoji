.class Lcom/metamoji/nt/NtPasteboardExtrasUtil$2;
.super Ljava/lang/Object;
.source "NtPasteboardExtrasUtil.java"

# interfaces
.implements Lcom/metamoji/nt/NtPasteboardExtrasUtil$IKeySelectorProc;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/nt/NtPasteboardExtrasUtil;->extraKeySelectorWithSuffix(Ljava/lang/String;)Lcom/metamoji/nt/NtPasteboardExtrasUtil$IKeySelectorProc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$adjustSuffix:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 42
    iput-object p1, p0, Lcom/metamoji/nt/NtPasteboardExtrasUtil$2;->val$adjustSuffix:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public select(Ljava/lang/String;)Z
    .locals 2

    .line 45
    const-string v0, "extra_"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/metamoji/nt/NtPasteboardExtrasUtil$2;->val$adjustSuffix:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    return v1

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    return v1
.end method
