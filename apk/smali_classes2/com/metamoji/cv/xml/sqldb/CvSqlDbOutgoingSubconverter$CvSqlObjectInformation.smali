.class Lcom/metamoji/cv/xml/sqldb/CvSqlDbOutgoingSubconverter$CvSqlObjectInformation;
.super Ljava/lang/Object;
.source "CvSqlDbOutgoingSubconverter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/cv/xml/sqldb/CvSqlDbOutgoingSubconverter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CvSqlObjectInformation"
.end annotation


# instance fields
.field objectId:Ljava/lang/String;

.field objectNumber:J

.field ownerId:Ljava/lang/String;


# direct methods
.method constructor <init>(JLjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    iput-wide p1, p0, Lcom/metamoji/cv/xml/sqldb/CvSqlDbOutgoingSubconverter$CvSqlObjectInformation;->objectNumber:J

    .line 61
    iput-object p3, p0, Lcom/metamoji/cv/xml/sqldb/CvSqlDbOutgoingSubconverter$CvSqlObjectInformation;->objectId:Ljava/lang/String;

    .line 62
    iput-object p4, p0, Lcom/metamoji/cv/xml/sqldb/CvSqlDbOutgoingSubconverter$CvSqlObjectInformation;->ownerId:Ljava/lang/String;

    return-void
.end method
