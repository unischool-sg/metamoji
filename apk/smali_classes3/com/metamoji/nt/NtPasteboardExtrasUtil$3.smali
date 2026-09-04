.class Lcom/metamoji/nt/NtPasteboardExtrasUtil$3;
.super Ljava/lang/Object;
.source "NtPasteboardExtrasUtil.java"

# interfaces
.implements Lcom/metamoji/nt/NtPasteboardExtrasUtil$IKeyConverterProc;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/nt/NtPasteboardExtrasUtil;->extraKeyConverterAppendSuffix(Ljava/lang/String;)Lcom/metamoji/nt/NtPasteboardExtrasUtil$IKeyConverterProc;
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

    .line 59
    iput-object p1, p0, Lcom/metamoji/nt/NtPasteboardExtrasUtil$3;->val$adjustSuffix:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public convert(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 62
    const-string v0, "extra_"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/metamoji/nt/NtPasteboardExtrasUtil$3;->val$adjustSuffix:Ljava/lang/String;

    filled-new-array {p1, v0}, [Ljava/lang/Object;

    move-result-object p1

    const-string v0, "%s%s"

    invoke-static {v0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    :cond_0
    return-object p1
.end method
