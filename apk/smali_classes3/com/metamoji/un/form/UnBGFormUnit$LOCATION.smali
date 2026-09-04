.class public Lcom/metamoji/un/form/UnBGFormUnit$LOCATION;
.super Ljava/lang/Object;
.source "UnBGFormUnit.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/un/form/UnBGFormUnit;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "LOCATION"
.end annotation


# instance fields
.field public offset:F

.field public size:F

.field final synthetic this$0:Lcom/metamoji/un/form/UnBGFormUnit;


# direct methods
.method constructor <init>(Lcom/metamoji/un/form/UnBGFormUnit;FF)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .line 82
    iput-object p1, p0, Lcom/metamoji/un/form/UnBGFormUnit$LOCATION;->this$0:Lcom/metamoji/un/form/UnBGFormUnit;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    iput p2, p0, Lcom/metamoji/un/form/UnBGFormUnit$LOCATION;->offset:F

    .line 84
    iput p3, p0, Lcom/metamoji/un/form/UnBGFormUnit$LOCATION;->size:F

    return-void
.end method
