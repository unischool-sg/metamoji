.class Lcom/metamoji/ns/NsCollaboUtils$4$1;
.super Ljava/lang/Object;
.source "NsCollaboUtils.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/ns/NsCollaboUtils$4;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/ns/NsCollaboUtils$4;


# direct methods
.method constructor <init>(Lcom/metamoji/ns/NsCollaboUtils$4;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 346
    iput-object p1, p0, Lcom/metamoji/ns/NsCollaboUtils$4$1;->this$0:Lcom/metamoji/ns/NsCollaboUtils$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 349
    invoke-static {}, Lcom/metamoji/ns/NsCollaboUtils;->getShareAnytime()V

    return-void
.end method
