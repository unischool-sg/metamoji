.class Lcom/metamoji/ui/flexible/FxManager$FxUiMenuData;
.super Ljava/lang/Object;
.source "FxManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/ui/flexible/FxManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FxUiMenuData"
.end annotation


# instance fields
.field public fxid:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

.field public menus:[Lcom/metamoji/ui/flexible/FxManagerDef$FxId;


# direct methods
.method public constructor <init>(Lcom/metamoji/ui/flexible/FxManagerDef$FxId;[Lcom/metamoji/ui/flexible/FxManagerDef$FxId;)V
    .locals 0

    .line 200
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 201
    iput-object p1, p0, Lcom/metamoji/ui/flexible/FxManager$FxUiMenuData;->fxid:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    .line 202
    iput-object p2, p0, Lcom/metamoji/ui/flexible/FxManager$FxUiMenuData;->menus:[Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    return-void
.end method
