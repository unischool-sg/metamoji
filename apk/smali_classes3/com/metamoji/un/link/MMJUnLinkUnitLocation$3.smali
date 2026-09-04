.class Lcom/metamoji/un/link/MMJUnLinkUnitLocation$3;
.super Ljava/lang/Object;
.source "MMJUnLinkUnitLocation.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/un/link/MMJUnLinkUnitLocation;->createWithEncodedURLAsync(Ljava/lang/String;)Lcom/metamoji/un/link/MMJUnLinkUnitLocation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$encodedURL:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 241
    iput-object p1, p0, Lcom/metamoji/un/link/MMJUnLinkUnitLocation$3;->val$encodedURL:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 243
    iget-object v0, p0, Lcom/metamoji/un/link/MMJUnLinkUnitLocation$3;->val$encodedURL:Ljava/lang/String;

    invoke-static {v0}, Lcom/metamoji/un/link/MMJUnLinkUnitLocation;->-$$Nest$smparseEncodedURLString(Ljava/lang/String;)Lcom/metamoji/un/link/MMJUnLinkUnitLocation;

    move-result-object v0

    sput-object v0, Lcom/metamoji/un/link/MMJUnLinkUnitLocation;->location_createWithEncodedURLAsync:Lcom/metamoji/un/link/MMJUnLinkUnitLocation;

    return-void
.end method
