.class public Lcom/metamoji/nt/cabinet/NtCabinetClipboard$Data;
.super Ljava/lang/Object;
.source "NtCabinetClipboard.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/nt/cabinet/NtCabinetClipboard;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Data"
.end annotation


# instance fields
.field public _absPath:Ljava/lang/String;

.field public _driveID:Ljava/lang/String;

.field public _mode:I

.field public _objectIDs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public _type:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
